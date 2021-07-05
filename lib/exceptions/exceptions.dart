import 'app_exceptions.dart';

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, 'Unauthorised: ');
}

class InvalidRequestException extends AppException {
  InvalidRequestException([message]) : super(message, 'Invalid Request: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([message]) : super(message, 'Invalid Input: ');
}

class FetchDataException extends AppException {
  FetchDataException([message])
      : super(message, 'Error During Communication: ');
}
