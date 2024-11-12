import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: 'status_code')
  final int? statusCode;

  @JsonKey(name: 'status_message')
  final String? statusMessage;

  @JsonKey(name: 'success')
  final bool? success;

  ApiErrorModel({this.statusCode, this.statusMessage, this.success});

  // Factory method for parsing JSON data
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  // Method for converting an instance of this model to JSON
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
