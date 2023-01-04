import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/dashboard.controller.dart';
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
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(dashboardProvider.notifier).reloadData();
                },
                icon: const Icon(Icons.refresh_outlined))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: WeatherWidget(),
                ),
                SizedBox(width: 20),
                Flexible(
                  flex: 2,
                  child: NewsWidget(),
                ),
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: SoccerScore(),
                ),
                SizedBox(width: 20),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: NewsWidget(),
                ),
                SizedBox(width: 20),
              ],
            )
          ],
        ));
  }
}
