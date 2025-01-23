import 'package:dio/dio.dart';

class DioExceptionHandler implements Exception {
  static String handleException(DioException error) {
    String errorMessage = "An unexpected error occurred";

    if (error.response != null) {
      switch (error.response?.statusCode) {
        case 400:
          errorMessage = "Məlumatları düzgün daxil edin";
          break;
        case 401:
          errorMessage = "Məlumatları düzgün daxil edin";
          break;
        case 403:
          errorMessage =
              "Forbidden. You don't have permission to access this resource.";
          break;
        case 404:
          errorMessage = "Resource not found.";
          break;
        case 408:
          errorMessage = "Request timeout. Please try again later.";
          break;
        case 500:
          errorMessage = "Server error";
          break;
        default:
          errorMessage = "Unexpected error: ${error.response?.statusCode}";
      }
    } else if (error.type == DioExceptionType.connectionTimeout) {
      errorMessage = "İnternetinizi yoxlayın";
    } else if (error.type == DioExceptionType.sendTimeout) {
      errorMessage = "İnternetinizi yoxlayın";
    } else if (error.type == DioExceptionType.receiveTimeout) {
      errorMessage = "İnternetinizi yoxlayın";
    } else if (error.type == DioExceptionType.cancel) {
      errorMessage = "Yenidən yoxlayın";
    } else if (error.type == DioExceptionType.connectionError) {
      errorMessage = "İnternetinizi yoxlayın";
    } else {
      errorMessage = "Unexpected error: ${error.message}";
    }

    return errorMessage;
  }
}
