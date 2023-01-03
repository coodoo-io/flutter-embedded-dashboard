// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardModel {
  WeatherType get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res, DashboardModel>;
  @useResult
  $Res call({WeatherType weather});
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res, $Val extends DashboardModel>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardModelStateCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$$_DashboardModelStateCopyWith(_$_DashboardModelState value,
          $Res Function(_$_DashboardModelState) then) =
      __$$_DashboardModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherType weather});
}

/// @nodoc
class __$$_DashboardModelStateCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res, _$_DashboardModelState>
    implements _$$_DashboardModelStateCopyWith<$Res> {
  __$$_DashboardModelStateCopyWithImpl(_$_DashboardModelState _value,
      $Res Function(_$_DashboardModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$_DashboardModelState(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherType,
    ));
  }
}

/// @nodoc

class _$_DashboardModelState implements _DashboardModelState {
  const _$_DashboardModelState({required this.weather});

  @override
  final WeatherType weather;

  @override
  String toString() {
    return 'DashboardModel(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardModelState &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardModelStateCopyWith<_$_DashboardModelState> get copyWith =>
      __$$_DashboardModelStateCopyWithImpl<_$_DashboardModelState>(
          this, _$identity);
}

abstract class _DashboardModelState implements DashboardModel {
  const factory _DashboardModelState({required final WeatherType weather}) =
      _$_DashboardModelState;

  @override
  WeatherType get weather;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardModelStateCopyWith<_$_DashboardModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
