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
  WeatherModel? get weather => throw _privateConstructorUsedError;
  List<NewsModel>? get newsModel => throw _privateConstructorUsedError;

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
  $Res call({WeatherModel? weather, List<NewsModel>? newsModel});

  $WeatherModelCopyWith<$Res>? get weather;
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
    Object? weather = freezed,
    Object? newsModel = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      newsModel: freezed == newsModel
          ? _value.newsModel
          : newsModel // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherModelCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$$_DashboardModelCopyWith(
          _$_DashboardModel value, $Res Function(_$_DashboardModel) then) =
      __$$_DashboardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherModel? weather, List<NewsModel>? newsModel});

  @override
  $WeatherModelCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$_DashboardModelCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res, _$_DashboardModel>
    implements _$$_DashboardModelCopyWith<$Res> {
  __$$_DashboardModelCopyWithImpl(
      _$_DashboardModel _value, $Res Function(_$_DashboardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? newsModel = freezed,
  }) {
    return _then(_$_DashboardModel(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      newsModel: freezed == newsModel
          ? _value._newsModel
          : newsModel // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ));
  }
}

/// @nodoc

class _$_DashboardModel implements _DashboardModel {
  const _$_DashboardModel({this.weather, final List<NewsModel>? newsModel})
      : _newsModel = newsModel;

  @override
  final WeatherModel? weather;
  final List<NewsModel>? _newsModel;
  @override
  List<NewsModel>? get newsModel {
    final value = _newsModel;
    if (value == null) return null;
    if (_newsModel is EqualUnmodifiableListView) return _newsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardModel(weather: $weather, newsModel: $newsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardModel &&
            (identical(other.weather, weather) || other.weather == weather) &&
            const DeepCollectionEquality()
                .equals(other._newsModel, _newsModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, weather, const DeepCollectionEquality().hash(_newsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardModelCopyWith<_$_DashboardModel> get copyWith =>
      __$$_DashboardModelCopyWithImpl<_$_DashboardModel>(this, _$identity);
}

abstract class _DashboardModel implements DashboardModel {
  const factory _DashboardModel(
      {final WeatherModel? weather,
      final List<NewsModel>? newsModel}) = _$_DashboardModel;

  @override
  WeatherModel? get weather;
  @override
  List<NewsModel>? get newsModel;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardModelCopyWith<_$_DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
