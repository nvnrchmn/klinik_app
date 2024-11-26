// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
    baseUrl: 'https://6745ba70512ddbd807f95cfc.mockapi.io/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3)));

// final dio = Dio(); // With default `Options`.

// void configureDio() {
//   // Set default configs
//   dio.options.baseUrl = 'https://6745ba70512ddbd807f95cfc.mockapi.io/';
//   dio.options.connectTimeout = const Duration(seconds: 5);
//   dio.options.receiveTimeout = const Duration(seconds: 3);

// // Or create `Dio` with a `BaseOptions` instance.
// final options = BaseOptions(
//   baseUrl: 'https://api.pub.dev',
//   connectTimeout: const Duration(seconds: 5),
//   receiveTimeout: const Duration(seconds: 3),
// );
// final anotherDio = Dio(options);
// }

class ApiClient {
  Future<Response> get(String path) async {
    try {
      final response = await dio.get(Uri.encodeFull(path));
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> post(String path, dynamic data) async {
    try {
      final response = await dio.post(Uri.encodeFull(path), data: data);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      final response = await dio.put(Uri.encodeFull(path), data: data);
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Response> delete(String path) async {
    try {
      final response = await dio.delete(Uri.encodeFull(path));
      return response;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
