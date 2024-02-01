// ignore_for_file: overridden_fields

import '../enums/custom_enums.dart';

sealed class Failure {
  final FailureType type;
  final String message;

  const Failure({
    required this.message,
    required this.type,
  });
}

class ClientFailure extends Failure {
  @override
  final String message;

  const ClientFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.client,
        );
}

class ServerFailure extends Failure {
  @override
  final String message;

  const ServerFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.server,
        );
}

class UnknownFailure extends Failure {
  @override
  final String message;

  const UnknownFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.unknown,
        );
}
