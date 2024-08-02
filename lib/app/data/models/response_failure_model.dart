
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_failure_model.g.dart';
part 'response_failure_model.freezed.dart';

@Freezed()
class ResponseFailure with _$ResponseFailure {
  const factory ResponseFailure({
    bool? status,
    bool? success,
    int? httpStatusCode,
    int? applicationStatusCode,
    String? httpStatus,
    String? applicationStatus,
    String? message,
  }) = _ResponseFailure;

  factory ResponseFailure.fromJson(Map<String, dynamic> json) =>
      _$ResponseFailureFromJson(json);
}
