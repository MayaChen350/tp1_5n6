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

  static const String _baseAddress = "http://172.17.0.2:8080";

  static Result<T> handleResponse<T>(Response<T> response) {
    if (response.statusCode != 200) {
      return Failure(
        "Une erreur réseau est survenue: Code ${response.statusCode}",
      );
    }
    return Success(response.data);
  }

  // NOTIFICATIONS

  /// POST ///
  Future<Result<String?>> getNotifications() async {
    final response = await _dio.post<String>(
      "$_baseAddress/test/notifications",
    );

    return handleResponse(response);
  }

  // TASKS

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
  Future<Result<String?>> changeProgress(long taskId, int valeur) async {
    final response = await _dio.get<String>(
      "$_baseAddress/tache/progres/$taskId/$valeur",
    );

    return handleResponse(response);
    // switch () {
    //   case Success<String>():
    //     return "OK";
    //   case Failure<String>(message: final errMessage):
    //     return errMessage;
    // }
  }

  /// GET ///
  Future<Result<ReponseDetailTache>> getTaskDetails(long taskId) async {
    return await _dio.getProto<ReponseDetailTache>(
      "$_baseAddress/tache/detail/$taskId",
      ReponseDetailTache.create(),
    );
  }

  /// GET ///
  Future<Result<ReponseAccueilItem>> getTaskList() async {
    return await _dio.getProto<ReponseAccueilItem>(
      "$_baseAddress/tache/accueil",
      ReponseAccueilItem.create(),
    );
  }

  // USERS

  /// POST ///
  Future<Result<ReponseConnexion>> tryRegistering(
    RequeteInscription request,
  ) async {
    return await _dio.postProto("$_baseAddress/id/inscription", {
      "nom": request.nom,
      "motDePasse": request.motDePasse,
      "confirmationMotDePasse": request.confirmationMotDePasse,
    }, ReponseConnexion.create());
  }

  /// POST ///
  Future<Result<String?>> tryDisconnecting() async {
    final response = await _dio.post<String>("$_baseAddress/id/deconnexion");

    // TODO: Handle disconnection client

    return handleResponse(response);
  }

  /// POST ///
  Future<Result<ReponseConnexion>> tryConnecting(
    RequeteConnexion request,
  ) async {
    return await _dio.postProto("$_baseAddress/id/connexion", {
      "nom": request.nom,
      "motDePasse": request.motDePasse,
    }, ReponseConnexion.create());
  }

  /// POST ///
  Future<Result<String?>> tryRecordToken(String token) async {
    final response = await _dio.post<String>(
      "$_baseAddress/enregistrer-jeton-notification",
      data: token,
    );

    // TODO: Handle disconnection client

    return handleResponse(response);
  }

  // PHOTO

  /// GET ///
  Future<Result<ReponseDetailTacheAvecPhoto>> getTaskDetailWithPicture(
    long taskId,
  ) async {
    return await _dio.getProto(
      "$_baseAddress/api/detail/photo/$taskId",
      ReponseDetailTacheAvecPhoto.create(),
    );
  }

  /// GET ///
  Future<Result<ReponseAccueilItem>> getTaskListWithPicture() async {
    return await _dio.getProto(
      "$_baseAddress/api/accueil/photo",
      ReponseAccueilItem.create(),
    );
  }
}
