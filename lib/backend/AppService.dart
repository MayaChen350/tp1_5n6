import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAjoutTache.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseConnexion.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTache.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTacheAvecPhoto.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteConnexion.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteInscription.pb.dart';
import 'package:tp1_5n6/data/type_safety/long.dart';
import 'package:tp1_5n6/utils/dio_proto.dart';
import 'package:tp1_5n6/utils/error_message.dart';

class AppService {
  // Singleton boilerplate
  AppService._internal();

  static AppService? _instance;

  factory AppService() {
    _instance ??= AppService._internal();
    return _instance!;
  }

  // DIO (Request library)
  final Dio _dio = Dio();

  // Service logic

  static const String _baseAddress = "http://10.0.0.84:8080";

  static Future<Result<T>> handleRequest<T>(
    Future<Response<T>> Function() request,
  ) async {
    Response<T> requestResponse;

    try {
      requestResponse = await request();
    } on DioException catch (e) {
      return Failure(displayError(e.response.toString()));
    } catch (e) {
      return Failure("$e");
    }

    if (requestResponse.statusCode != 200) {
      return Failure(
        "Une erreur réseau est survenue: Code ${requestResponse.statusCode}",
      );
    }
    return Success(requestResponse.data);
  }

  // NOTIFICATIONS

  /// POST ///
  Future<Result<String?>> getNotifications() async => await handleRequest(
    () async => _dio.post<String>("$_baseAddress/test/notifications"),
  );

  // TASKS

  /// GET ///
  Future<Result<List<ReponseAccueilItem>>> getTasks() async {
    final taskList = await handleRequest(() async => _dio.get("$_baseAddress/home"));

    switch (taskList) {
      case Success():
        final List<dynamic> list = jsonDecode(taskList.value);
        return Success(list.map((elem) => ReponseAccueilItem.fromJson(elem)).toList());
      case Failure():
        return Failure(taskList.message);
    }
  }

  /// POST ///
  Future<Result<ReponseAjoutTache>> addNewTask(
    String name,
    DateTime deadline,
  ) async {
    final dateLimite = deadline.toUtc().toIso8601String();
    // "${deadline.year}-${deadline.month}-${deadline.day}T${deadline.hour}:${deadline.minute}:${deadline.second}.${deadline.millisecond}Z";

    return await _dio.postProto<ReponseAjoutTache>(
      "$_baseAddress/tache/ajout",
      {"nom": name, "dateLimite": dateLimite},
      ReponseAjoutTache.create(),
    );
  }

  /// GET ///
  Future<Result<String?>> changeProgress(long taskId, int valeur) async =>
      handleRequest(
        () async =>
            _dio.get<String>("$_baseAddress/tache/progres/$taskId/$valeur"),
      );

  /// GET ///
  Future<Result<ReponseDetailTache>> getTaskDetails(long taskId) async =>
      await _dio.getProto<ReponseDetailTache>(
        "$_baseAddress/tache/detail/$taskId",
        ReponseDetailTache.create(),
      );

  /// GET ///
  Future<Result<ReponseAccueilItem>> getTaskList() async =>
      await _dio.getProto<ReponseAccueilItem>(
        "$_baseAddress/tache/accueil",
        ReponseAccueilItem.create(),
      );

  // USERS

  /// POST ///
  Future<Result<ReponseConnexion>> tryRegistering(
    RequeteInscription request,
  ) async => await _dio.postProto("$_baseAddress/id/inscription", {
    "nom": request.nom,
    "motDePasse": request.motDePasse,
    "confirmationMotDePasse": request.confirmationMotDePasse,
  }, ReponseConnexion.create());

  /// POST ///
  Future<Result<String?>> tryDisconnecting() async => handleRequest(
    () async => _dio.post<String>("$_baseAddress/id/deconnexion"),
  );

  /// POST ///
  Future<Result<ReponseConnexion>> tryConnecting(
    RequeteConnexion request,
  ) async => await _dio.postProto("$_baseAddress/id/connexion", {
    "nom": request.nom,
    "motDePasse": request.motDePasse,
  }, ReponseConnexion.create());

  /// POST ///
  Future<Result<String?>> tryRecordToken(String token) async => handleRequest(
    () async => _dio.post<String>(
      "$_baseAddress/enregistrer-jeton-notification",
      data: token,
    ),
  );

  // PHOTO

  /// GET ///
  Future<Result<ReponseDetailTacheAvecPhoto>> getTaskDetailWithPicture(
    long taskId,
  ) async => await _dio.getProto(
    "$_baseAddress/api/detail/photo/$taskId",
    ReponseDetailTacheAvecPhoto.create(),
  );

  /// GET ///
  Future<Result<ReponseAccueilItem>> getTaskListWithPicture() async =>
      await _dio.getProto(
        "$_baseAddress/api/accueil/photo",
        ReponseAccueilItem.create(),
      );
}
