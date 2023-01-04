import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sample/presentation/models/news.model.dart';

class NewsApi {
  Dio dio;
  NewsApi({required this.dio});

  getLatestNews() async {
    List<NewsModel> list = [];
    var result = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=<your-api-key>&pageSize=3&country=de');
    log(NewsModel.fromJson(result.data['articles'][0]).toString());

    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    for (dynamic ele in result.data['articles']) {
      var model = NewsModel.fromJson(ele);
      model = model.copyWith(content: model.content.replaceAll(exp, ''));
      list.add(model);
    }
    return list;
  }
}
