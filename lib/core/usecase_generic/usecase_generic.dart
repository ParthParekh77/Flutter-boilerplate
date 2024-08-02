import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';

typedef ResultCallBack<T> = Either<Failure,T>;

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseGeneric<Type, Params> {
  Future<ResultCallBack<Type>> call(Params params);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}