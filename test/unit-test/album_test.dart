import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/album.dart';
import 'package:mocktail/mocktail.dart' as mock_tail;

// class MockHttpClient extends mock_tail.Mock implements http.Client {}

// dynamic data = '{"userId": 1, "id": 2, "title": "mock"}';

// void main() {
//   late MockHttpClient client;
//   client = MockHttpClient();
//   group('fetch Album test', () {
//     test('fetch album test', () async {
//       mock_tail
//           .when(() => client
//               .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
//           .thenAnswer(
//             (_) async => http.Response(data, 200),
//           );
//       AlbumService service = AlbumService(
//         client: client,
//       );
//       expect(await service.fetchAlbum(), isA<Album>());
//     });
//   });
// }

// class MockHttpClient extends Mock implements http.Client {
//   @override
//   Future<http.Response> get(Uri? url, {Map<String, String>? headers}) {
//     return super.noSuchMethod(Invocation.method(#get, [url, headers]),
//         returnValue: Future.value(http.Response(data, 200)));
//   }
// }

// dynamic data = '{"userId": 1, "id": 2, "title": "mock"}';

// void main() {
//   late MockHttpClient client;
//   setUpAll(() {
//     print('setup All');
//     client = MockHttpClient();
//   });

//   group('fetch Album test', () {
//     test('fetch album test', () async {
//       when(client
//               .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
//           .thenAnswer(
//         (_) async => http.Response(data, 200),
//       );
//       AlbumService service = AlbumService(
//         client: client,
//       );
//       expect(await service.fetchAlbum(), isA<Album>());
//     });
//   });
// }

// Basic functions in testing
// void main() {
//   setUp(() {
//     // call after eqach test
//     print('setup');
//   });
//
//   setUpAll(() {
//     // call after eqach test
//     print('setup All');
//   });
//
//   tearDown(() {
//     // call after each test
//     print('tearDown');
//   });
//
//   tearDownAll(() {
//     // calls after every test
//     print('tearDown All');
//   });
//   group('description', () {
//     test('test 1', () {});
//     test('test 2', () {});
//   });
// }
