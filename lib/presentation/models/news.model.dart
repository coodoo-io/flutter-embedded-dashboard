import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.model.freezed.dart';
part 'news.model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel(
      {@Default('') String author,
      required String title,
      @Default('') String description,
      @Default('') String content,
      @Default('') String urlToImage}) = _NewsModel;

  factory NewsModel.fromJson(Map<String, Object?> json) =>
      _$NewsModelFromJson(json);
}
