class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([
    this._message,
    this._prefix,
  ]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}
