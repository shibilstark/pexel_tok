// ignore_for_file: overridden_fields

import '../enums/custom_enums.dart';

sealed class AppFailure {
  final FailureType type;
  final String message;

  const AppFailure({
    required this.message,
    required this.type,
  });
}

class ClientFailure extends AppFailure {
  @override
  final String message;

  const ClientFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.client,
        );
}

class ServerFailure extends AppFailure {
  @override
  final String message;

  const ServerFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.server,
        );
}

class UnknownFailure extends AppFailure {
  @override
  final String message;

  const UnknownFailure({
    required this.message,
  }) : super(
          message: message,
          type: FailureType.unknown,
        );
}
