
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:tp1_5n6/backend/util_classes/result.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseAccueilItem.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseConnexion.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTache.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/ReponseDetailTacheAvecPhoto.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteConnexion.pb.dart';
import 'package:tp1_5n6/data/generated/protobuf/RequeteInscription.pb.dart';
import 'package:tp1_5n6/data/type_safety/long.dart';
import 'package:tp1_5n6/utils/dio_proto.dart';
import 'package:tp1_5n6/utils/error_message.dart';

class AppService {
  AppService._internal() {
    _dio = Dio();

    _dio.interceptors.add(CookieManager(CookieJar()));
  }

  static AppService? _instance;

  factory AppService() {
    _instance ??= AppService._internal();
    return _instance!;
  }

  // DIO (Request library)
  late final Dio _dio;

  // Service logic

  static const String _baseAddress = "https://kmbserver-backend.onrender.com";

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
    final taskList = await handleRequest(
      () async => _dio.get("$_baseAddress/tache/accueil"),
    );

    switch (taskList) {
      case Success():
        final List<dynamic> list = taskList.value;
        return Success(
          list.map((elem) {
            final reponse = ReponseAccueilItem.create();
            return reponse..mergeFromProto3Json(elem);
          }).toList(),
        );
      case Failure():
        return Failure(taskList.message);
    }
  }

  /// POST ///
  Future<Result<String?>> addNewTask(String name, DateTime deadline) async {
    final dateLimite = deadline.toUtc().toIso8601String();

    return handleRequest(
      () async => _dio.post<String>(
        "$_baseAddress/tache/ajout",
        data: {"nom": name, "dateLimite": dateLimite},
      ),
    );

    // return await _dio.postProto<ReponseAjoutTache>(
    //   "$_baseAddress/tache/ajout",
    //   {"nom": name, "dateLimite": dateLimite},
    //   ReponseAjoutTache.create(),
    // );
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

  /// Not linked to any API endpoint ///
  Future<Result<ReponseAccueilItem?>> getTaskFromName(String? name) async {
    if (name == null) return Success(name as Null);

    final listTasks = await getTasks();

    ReponseAccueilItem? findTask(String name) {
      final result = (listTasks as Success<List<ReponseAccueilItem>>).value!
          .firstWhere(
            (item) => item.nom == name,
            orElse: () => ReponseAccueilItem(id: null),
          );

      if (!result.hasId()) {
        return null;
      } else {
        return result;
      }
    }

    switch (listTasks) {
      case Success<List<ReponseAccueilItem>>():
        return Success(await compute(findTask, name));
      case Failure<List<ReponseAccueilItem>>():
        return Failure(listTasks.message);
    }
  }

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
