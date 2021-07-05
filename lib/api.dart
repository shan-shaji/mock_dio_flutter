import 'dart:io';
import 'package:dio/dio.dart';

import 'exceptions/exceptions.dart';

class ApiService {
  final String _baseURL = 'https://example.com/';
  Dio _dio = Dio();

  ApiService({Dio? dio}) {
    _dio = dio ?? Dio(); /// Dependency Injection
    _dio.options.baseUrl = _baseURL;
  }

  Future<dynamic> get(String path) async {
    var responseJson;
    try {
      final response = await _dio.get(_baseURL + path);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  @override
  Future<dynamic> post(String path, dynamic data) async {
    var responseJson;
    try {
      final response = await _dio.post(_baseURL + path,
          data: data,
          options: Options()..headers = {'Content-Type': 'application/json'});
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  @override
  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 404:
        return response.data;
      case 400:
        throw InvalidRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:
      default:
        throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
        );
    }
  }
}
