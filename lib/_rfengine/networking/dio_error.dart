import 'package:dio/dio.dart';

class DioErrorUtil {
  static String getErrorMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out. Please try again.";
      case DioExceptionType.sendTimeout:
        return "Request timed out. Please check your connection.";
      case DioExceptionType.receiveTimeout:
        return "Server took too long to respond. Please try again later.";
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.cancel:
        return "Request was cancelled. Please try again.";
      case DioExceptionType.unknown:
      default:
        return "An unexpected error occurred. Please try again.";
    }
  }

  static String _handleBadResponse(Response? response) {
    if (response == null) {
      return "An unknown error occurred.";
    }

    switch (response.statusCode) {
      case 400:
        return "Bad request. Please check your input.";
      case 401:
        return "Unauthorized. Please check your credentials.";
      case 403:
        return "Access denied. You do not have permission.";
      case 404:
        return "Resource not found. Please try again.";
      case 500:
        return "Internal server error. Please try again later.";
      case 503:
        return "Service unavailable. Please try again later.";
      default:
        return "Received an unexpected error: ${response.statusCode}.";
    }
  }
}
