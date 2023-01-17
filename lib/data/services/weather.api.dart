import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:sample/presentation/models/dashboard.model.dart';
import 'package:sample/presentation/models/weather.model.dart';

class DioWeather {
  Dio dio;
  DioWeather({required this.dio});

  Future<WeatherModel> getCurrentWeather() async {
    var response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=<your-api-key-here>&q=Mainz&days=1&aqi=no&alerts=no');
    log(response.data.toString());
    log(WeatherModel.fromJson(response.data).toString());
    return WeatherModel.fromJson(response.data);
  }
}
