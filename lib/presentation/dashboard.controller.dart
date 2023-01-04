import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/services/news.service.dart';
import 'package:sample/data/services/weather.api.dart';
import 'package:sample/presentation/models/dashboard.model.dart';

class DashboardController extends StateNotifier<DashboardModel> {
  DioWeather weaterAPI;
  NewsApi newsApi;
  DashboardController(DashboardModel dashboardModel,
      {required this.weaterAPI, required this.newsApi})
      : super(dashboardModel) {
    getWeatherState();
    getNewsData();
  }

  void getWeatherState() async {
    var value = await weaterAPI.getCurrentWeather();
    state = state.copyWith(weather: value);
  }

  void getNewsData() async {
    var result = await newsApi.getLatestNews();
    state = state.copyWith(newsModel: result);
  }

  void reloadData() async {
    state = state.copyWith(weather: null, newsModel: null);
    getWeatherState();
    getNewsData();
  }
}
