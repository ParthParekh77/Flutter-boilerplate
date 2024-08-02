// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_failure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseFailure _$$_ResponseFailureFromJson(Map<String, dynamic> json) =>
    _$_ResponseFailure(
      status: json['status'] as bool?,
      success: json['success'] as bool?,
      httpStatusCode: (json['httpStatusCode'] as num?)?.toInt(),
      applicationStatusCode: (json['applicationStatusCode'] as num?)?.toInt(),
      httpStatus: json['httpStatus'] as String?,
      applicationStatus: json['applicationStatus'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ResponseFailureToJson(_$_ResponseFailure instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'httpStatusCode': instance.httpStatusCode,
      'applicationStatusCode': instance.applicationStatusCode,
      'httpStatus': instance.httpStatus,
      'applicationStatus': instance.applicationStatus,
      'message': instance.message,
    };
