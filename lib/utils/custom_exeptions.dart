class UnknownException implements Exception {
  const UnknownException(this.message);

  final message;
}

class ClientExcaption implements Exception {
  final String message;

  const ClientExcaption(this.message);
}

class ServerExcaption implements Exception {
  final String message;

  const ServerExcaption(this.message);
}
