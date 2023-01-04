import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/presentation/models/news.model.dart';
import 'package:sample/presentation/models/weather.model.dart';
part 'dashboard.model.freezed.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel(
      {WeatherModel? weather, List<NewsModel>? newsModel}) = _DashboardModel;
}
