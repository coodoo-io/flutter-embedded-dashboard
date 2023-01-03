import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/data/services/weather.api.dart';
import 'package:sample/presentation/dashboard.model.dart';

class DashboardController extends StateNotifier<DashboardModel> {
  DioWeather weaterAPI;
  DashboardController(DashboardModel dashboardModel, {required this.weaterAPI})
      : super(dashboardModel) {
    getWeatherState();
  }

  void getWeatherState() async {
    var value = await weaterAPI.getCurrentWeather();
    state = state.copyWith(weather: value);
  }
}
