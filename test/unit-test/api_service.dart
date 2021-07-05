import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';


import 'test_constants.dart';


void main() {
  final dio = Dio();
  final dioAdapter = DioAdapter();
  var baseUrl;

  setUp(() {
    dio.httpClientAdapter = dioAdapter;
    baseUrl = 'https://example.com/';
  });

  group('- ApiService class methods test', () {
    group('- Get Method', () {
      test('- Get Method Success test', () async {

        dioAdapter.onGet(
          '$baseUrl$testPath',
              (request) {
            return request.reply(200, successMessage);
          },
          data: null,
          queryParameters: {},
          headers: {},
        );

        final service = ApiService(
          dio: dio,
        );

        final response = await service.get('test');

        expect(response, successMessage);
      });
    });

    group('- Post Method', () {
      test('- Post Method Success test', () async {

        dioAdapter.onPost(
          '$baseUrl$testPath',
              (request) {
            return request.reply(201, successMessage);
          },
          data: json.encode(testData),
          queryParameters: {},
          headers: header,
        );


        final service = ApiService(
          dio: dio,
        );

        final response = await service.post('test', json.encode(testData));

        expect(response, successMessage);
      });
    });
  });
}
