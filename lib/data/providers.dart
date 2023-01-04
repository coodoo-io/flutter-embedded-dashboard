import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/services/news.service.dart';
import 'package:sample/data/services/weather.api.dart';
import 'package:sample/presentation/dashboard.controller.dart';
import 'package:sample/presentation/models/dashboard.model.dart';

final dashboardProvider =
    StateNotifierProvider<DashboardController, DashboardModel>((ref) =>
        DashboardController(const DashboardModel(),
            weaterAPI: ref.read(weatherApiProvider),
            newsApi: ref.read(newsApiProvider)));

final dioProvider = Provider((_ref) {
  var dio = Dio();
  return dio;
});

final weatherApiProvider = Provider((_ref) {
  var dio = _ref.read(dioProvider);
  var dioWeather = DioWeather(dio: dio);
  return dioWeather;
});

final newsApiProvider = Provider((_ref) {
  var dio = _ref.read(dioProvider);
  var newsApi = NewsApi(dio: dio);
  return newsApi;
});
