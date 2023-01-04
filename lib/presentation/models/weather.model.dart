import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.model.freezed.dart';
part 'weather.model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel(
      {@Default(Location()) Location location,
      @Default(Current()) Current current}) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current(
      {@Default(0) double temp_c,
      @Default(0) int is_day,
      @Default(Condition()) Condition condition}) = _Current;
  factory Current.fromJson(Map<String, Object?> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  const factory Condition({
    @Default('') String text,
    @Default('') String icon,
    @Default(0) int code,
    @Default(0) double feelslike_c,
  }) = _Condition;
  factory Condition.fromJson(Map<String, Object?> json) =>
      _$ConditionFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location(
      {@Default('') String name, @Default('') String localtime}) = _Location;
  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}
