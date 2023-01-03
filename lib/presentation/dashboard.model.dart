import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard.model.freezed.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel({required WeatherType weather}) =
      _DashboardModelState;
}

enum WeatherType {
  none('none'),
  snowy('swnoy'),
  sunny('sunny'),
  rainy('rainy');

  const WeatherType(this.value);
  final String value;
}
