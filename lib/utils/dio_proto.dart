import 'package:dio/dio.dart';
import 'package:protobuf/protobuf.dart';
import 'package:tp1_5n6/backend/AppService.dart';

import 'package:tp1_5n6/backend/util_classes/result.dart';

extension DioProto on Dio {
  Future<Result<T>> postProto<T extends GeneratedMessage>(
    String path,
    Map<String, dynamic> body,
    T responseType,
  ) async {
    final requestResponse = await post(path, data: body);

    final response = AppService.handleResponse(requestResponse);
    if (response is Failure) {
      return response as Result<T>;
    } // else then:
    responseType.mergeFromJson(requestResponse.data);
    return Success(responseType);
  }

  Future<Result<T>> getProto<T extends GeneratedMessage>(
      String path,
      T responseType,
      ) async {
    final requestResponse = await get(path);

    final response = AppService.handleResponse(requestResponse);
    if (response is Failure) {
      return response as Result<T>;
    } // else then:
    responseType.mergeFromJson(requestResponse.data);
    return Success(responseType);
  }
}
