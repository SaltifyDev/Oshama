class MilkyException implements Exception {
  final int retcode;
  final String message;

  MilkyException(this.retcode, this.message);
}
