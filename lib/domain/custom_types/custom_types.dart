import 'package:dartz/dartz.dart';
import 'package:pexel_tok/domain/failure/failure.dart';

typedef FutureEither<T> = Future<Either<AppFailure, T>>;
typedef EitherFailure<T> = Either<AppFailure, T>;
