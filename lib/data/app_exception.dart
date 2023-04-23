class AppException implements Exception {
  final _messege;
  final _prefix;

  AppException([this._messege, this._prefix]);

  String toString() {
    return "$_prefix$_messege";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Error during communication");
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, "Invalid request");
}

class UnAuthorizeException extends AppException {
  UnAuthorizeException([String? message])
      : super(message, "unauthorized request");
}