import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/data/services/weather.api.dart';
import 'package:sample/presentation/dashboard.controller.dart';
import 'package:sample/presentation/dashboard.model.dart';

final dashboardProvider =
    StateNotifierProvider<DashboardController, DashboardModel>((ref) =>
        DashboardController(const DashboardModel(weather: WeatherType.none),
            weaterAPI: ref.read(weatherApiProvider)));

final dioProvider = Provider((_ref) {
  var dio = Dio();
  return dio;
});

final weatherApiProvider = Provider((_ref) {
  var dio = _ref.read(dioProvider);
  var dioWeather = DioWeather(dio: dio);
  return dioWeather;
});
