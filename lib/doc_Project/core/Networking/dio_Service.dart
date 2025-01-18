import 'package:dio/dio.dart';
import 'package:DoctorBook/doc_Project/core/Networking/constants.dart';

class DioService {
  late Dio _dio;

  DioService() {
    _dio = Dio(BaseOptions(
      baseUrl: Constants.basePath,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ));
  }

  Future<Response> getRequest(String path,
      {Map<String, dynamic>? queryParameters, String? token}) async {
    try {
      Options options = Options(
        headers: token != null ? {'Authorization': 'Bearer $token'} : null,
        validateStatus: (status) {
          return status != null &&
              status < 500; // قبول جميع الأكواد الأقل من 500
        },
      );
      Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      _handleResponse(response);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

  Future<Response> postRequest(String path,
      {dynamic data, String? token}) async {
    try {
      Options options = Options(
        headers: token != null ? {'Authorization': 'Bearer $token'} : null,
        validateStatus: (status) {
          return status != null &&
              status < 500; // قبول جميع الأكواد الأقل من 500
        },
      );
      Response response = await _dio.post(path, data: data, options: options);
      _handleResponse(response);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

  // باقي التوابع بنفس الطريقة

  void _handleResponse(Response response) {
    print('Response status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      print('Request was successful');
    } else if (response.statusCode == 401) {
      // التعامل مع حالة 401
      print('Unauthorized request: ${response.statusCode}');
      // إضافة إجراءات مثل إعادة توجيه المستخدم لتسجيل الدخول
    } else {
      print('Unexpected response status: ${response.statusCode}');
    }
  }

  void _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        print('Request to API server was cancelled');
        break;
      case DioExceptionType.connectionTimeout:
        print('Connection timeout with API server');
        break;
      case DioExceptionType.receiveTimeout:
        print('Receive timeout in connection with API server');
        break;
      case DioExceptionType.badResponse:
        print('Received invalid status code: ${error.response?.statusCode}');
        break;
      case DioExceptionType.sendTimeout:
        print('Send timeout in connection with API server');
        break;
      case DioExceptionType.unknown:
        print('Something went wrong: ${error.message}');
        break;
      case DioExceptionType.badCertificate:
        print('Bad certificate: ${error.message}');
        break;
      default:
        print('Unhandled Dio error: ${error.type}');
        break;
    }
  }
}
