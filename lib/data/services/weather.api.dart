import 'package:dio/dio.dart';
import 'package:sample/presentation/dashboard.model.dart';

class DioWeather {
  Dio dio;
  DioWeather({required this.dio});

  getCurrentWeather() async {
    return Future.delayed(Duration(seconds: 5), (() {
      return WeatherType.rainy;
    }));
  }
}
