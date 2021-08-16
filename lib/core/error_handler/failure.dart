class Failure implements Exception {
  final String message;

  Failure(this.message);
}

class GlobalFailure extends Failure {
  GlobalFailure(String message) : super(message);
}
