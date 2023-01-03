import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/dashboard.model.dart';
import 'package:sample/presentation/widgets/box.widget.dart';
import 'package:sample/presentation/widgets/news.widget.dart';
import 'package:sample/presentation/widgets/soccer_score.widget.dart';
import 'package:sample/presentation/widgets/weather.widget.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          toolbarTextStyle: Theme.of(context).textTheme.labelMedium,
          title: const Text(
            'Home News Controll',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeatherWidget(),
                NewsWidget(),
                SoccerScore(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.newspaper_outlined))
              ],
            )
          ],
        ));
  }
}
