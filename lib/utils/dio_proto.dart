import 'package:dio/dio.dart';
import 'package:protobuf/protobuf.dart';
import 'package:tp1_5n6/backend/AppService.dart';

import 'package:tp1_5n6/backend/util_classes/result.dart';

extension DioProto on Dio {
  Future<Result<T>> handleRestOfRequest<T extends GeneratedMessage>(
    Future<Response<dynamic>> Function() request,
    T responseType,
  ) async {
    final requestResult = await AppService.handleRequest(request);

    switch (requestResult) {
      case Success(value: final result):
        responseType.mergeFromProto3Json(result);
        return Success(responseType);
      case Failure(message: final message):
        return Failure(message);
    }
  }

  Future<Result<T>> postProto<T extends GeneratedMessage>(
    String path,
    Map<String, dynamic> body,
    T responseType,
  ) async => handleRestOfRequest(
    () async => await post(path, data: body),
    responseType,
  );

  Future<Result<T>> getProto<T extends GeneratedMessage>(
    String path,
    T responseType,
  ) async => handleRestOfRequest(() async => await get(path), responseType);
}
