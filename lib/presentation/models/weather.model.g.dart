// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      location: json['location'] == null
          ? const Location()
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? const Current()
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$_Current _$$_CurrentFromJson(Map<String, dynamic> json) => _$_Current(
      temp_c: (json['temp_c'] as num?)?.toDouble() ?? 0,
      is_day: json['is_day'] as int? ?? 0,
      condition: json['condition'] == null
          ? const Condition()
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'is_day': instance.is_day,
      'condition': instance.condition,
    };

_$_Condition _$$_ConditionFromJson(Map<String, dynamic> json) => _$_Condition(
      text: json['text'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      code: json['code'] as int? ?? 0,
      feelslike_c: (json['feelslike_c'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
      'feelslike_c': instance.feelslike_c,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String? ?? '',
      localtime: json['localtime'] as String? ?? '',
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localtime': instance.localtime,
    };
