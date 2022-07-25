import 'package:dio/dio.dart';

class Network {
  static final dio = Dio(
    BaseOptions(
        baseUrl: "https://api.escuelajs.co/api/v1/",
        receiveDataWhenStatusError: true),
  );

  static Future<void> initiaLizeInterceptors() async {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          var headers = {
            "Content-Type": "application/x-www-form-urlencoded; charset=utf-8",
            "Accept": "application/json"
          };
          // print(request.uri);
          request.headers.addAll(headers);
          return handler.next(request);
        },
        onResponse: (response, handler) {
          // print(response.data);
          return handler.next(response);
        },
        onError: (error, handler) {
          return handler.next(error);
        },
      ),
    );
  }
}