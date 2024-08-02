// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_failure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseFailure _$ResponseFailureFromJson(Map<String, dynamic> json) {
  return _ResponseFailure.fromJson(json);
}

/// @nodoc
mixin _$ResponseFailure {
  bool? get status => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  int? get httpStatusCode => throw _privateConstructorUsedError;
  int? get applicationStatusCode => throw _privateConstructorUsedError;
  String? get httpStatus => throw _privateConstructorUsedError;
  String? get applicationStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseFailureCopyWith<ResponseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFailureCopyWith<$Res> {
  factory $ResponseFailureCopyWith(
          ResponseFailure value, $Res Function(ResponseFailure) then) =
      _$ResponseFailureCopyWithImpl<$Res, ResponseFailure>;
  @useResult
  $Res call(
      {bool? status,
      bool? success,
      int? httpStatusCode,
      int? applicationStatusCode,
      String? httpStatus,
      String? applicationStatus,
      String? message});
}

/// @nodoc
class _$ResponseFailureCopyWithImpl<$Res, $Val extends ResponseFailure>
    implements $ResponseFailureCopyWith<$Res> {
  _$ResponseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? httpStatusCode = freezed,
    Object? applicationStatusCode = freezed,
    Object? httpStatus = freezed,
    Object? applicationStatus = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      httpStatusCode: freezed == httpStatusCode
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationStatusCode: freezed == applicationStatusCode
          ? _value.applicationStatusCode
          : applicationStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      httpStatus: freezed == httpStatus
          ? _value.httpStatus
          : httpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationStatus: freezed == applicationStatus
          ? _value.applicationStatus
          : applicationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseFailureCopyWith<$Res>
    implements $ResponseFailureCopyWith<$Res> {
  factory _$$_ResponseFailureCopyWith(
          _$_ResponseFailure value, $Res Function(_$_ResponseFailure) then) =
      __$$_ResponseFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      bool? success,
      int? httpStatusCode,
      int? applicationStatusCode,
      String? httpStatus,
      String? applicationStatus,
      String? message});
}

/// @nodoc
class __$$_ResponseFailureCopyWithImpl<$Res>
    extends _$ResponseFailureCopyWithImpl<$Res, _$_ResponseFailure>
    implements _$$_ResponseFailureCopyWith<$Res> {
  __$$_ResponseFailureCopyWithImpl(
      _$_ResponseFailure _value, $Res Function(_$_ResponseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
    Object? httpStatusCode = freezed,
    Object? applicationStatusCode = freezed,
    Object? httpStatus = freezed,
    Object? applicationStatus = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResponseFailure(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      httpStatusCode: freezed == httpStatusCode
          ? _value.httpStatusCode
          : httpStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationStatusCode: freezed == applicationStatusCode
          ? _value.applicationStatusCode
          : applicationStatusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      httpStatus: freezed == httpStatus
          ? _value.httpStatus
          : httpStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationStatus: freezed == applicationStatus
          ? _value.applicationStatus
          : applicationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseFailure implements _ResponseFailure {
  const _$_ResponseFailure(
      {this.status,
      this.success,
      this.httpStatusCode,
      this.applicationStatusCode,
      this.httpStatus,
      this.applicationStatus,
      this.message});

  factory _$_ResponseFailure.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFailureFromJson(json);

  @override
  final bool? status;
  @override
  final bool? success;
  @override
  final int? httpStatusCode;
  @override
  final int? applicationStatusCode;
  @override
  final String? httpStatus;
  @override
  final String? applicationStatus;
  @override
  final String? message;

  @override
  String toString() {
    return 'ResponseFailure(status: $status, success: $success, httpStatusCode: $httpStatusCode, applicationStatusCode: $applicationStatusCode, httpStatus: $httpStatus, applicationStatus: $applicationStatus, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseFailure &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.httpStatusCode, httpStatusCode) ||
                other.httpStatusCode == httpStatusCode) &&
            (identical(other.applicationStatusCode, applicationStatusCode) ||
                other.applicationStatusCode == applicationStatusCode) &&
            (identical(other.httpStatus, httpStatus) ||
                other.httpStatus == httpStatus) &&
            (identical(other.applicationStatus, applicationStatus) ||
                other.applicationStatus == applicationStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, success, httpStatusCode,
      applicationStatusCode, httpStatus, applicationStatus, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseFailureCopyWith<_$_ResponseFailure> get copyWith =>
      __$$_ResponseFailureCopyWithImpl<_$_ResponseFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseFailureToJson(
      this,
    );
  }
}

abstract class _ResponseFailure implements ResponseFailure {
  const factory _ResponseFailure(
      {final bool? status,
      final bool? success,
      final int? httpStatusCode,
      final int? applicationStatusCode,
      final String? httpStatus,
      final String? applicationStatus,
      final String? message}) = _$_ResponseFailure;

  factory _ResponseFailure.fromJson(Map<String, dynamic> json) =
      _$_ResponseFailure.fromJson;

  @override
  bool? get status;
  @override
  bool? get success;
  @override
  int? get httpStatusCode;
  @override
  int? get applicationStatusCode;
  @override
  String? get httpStatus;
  @override
  String? get applicationStatus;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseFailureCopyWith<_$_ResponseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
