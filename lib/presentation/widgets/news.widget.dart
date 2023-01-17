import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/models/news.model.dart';
import 'package:sample/presentation/widgets/box.widget.dart';

class NewsWidget extends ConsumerWidget {
  double aspectRatio;
  bool shorten;
  NewsWidget({super.key, this.aspectRatio = 16 / 9, this.shorten = true});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var news = ref.watch(dashboardProvider).newsModel;

    return BoxWidget(
      title: "News",
      child: news == null
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: CarouselSlider(
                items: news
                    .map((e) => NewsItemWidget(
                          news: e,
                          shorten: shorten,
                        ))
                    .toList(),
                options: CarouselOptions(
                    viewportFraction: 1, aspectRatio: aspectRatio),
              )),
    );
  }
}

class NewsItemWidget extends StatelessWidget {
  NewsModel news;
  bool shorten;
  NewsItemWidget({super.key, required this.news, this.shorten = true});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme.labelMedium;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                news.title,
                style: theme,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                shorten
                    ? news.content.length > 80
                        ? '${news.content.substring(0, 80)}...'
                        : news.content
                    : news.content,
                style: theme,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: 75,
                height: 75,
                child: (news.urlToImage.isNotEmpty)
                    ? Image.network(news.urlToImage)
                    : const SizedBox())
          ],
        )
      ],
    );
  }
}
