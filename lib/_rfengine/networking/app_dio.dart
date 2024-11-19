import 'package:dio/dio.dart';
import '../app_configuration.dart';

abstract class AppDio {
  static Dio getDio() {
    return Dio(dioOptions);
  }

  static final dioOptions = BaseOptions(
    baseUrl: AppConfiguration.getBaseURL(),
    headers: {
      "Content-Type": "application/json",
      "Authorization": AppConfiguration.pexelAPI,
    },
  );
}
