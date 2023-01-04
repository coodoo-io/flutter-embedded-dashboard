// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      author: json['author'] as String? ?? '',
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      content: json['content'] as String? ?? '',
      urlToImage: json['urlToImage'] as String? ?? '',
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'urlToImage': instance.urlToImage,
    };
