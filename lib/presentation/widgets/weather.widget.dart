import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/dashboard.model.dart';
import 'package:sample/presentation/widgets/box.widget.dart';

class WeatherWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var weaterhState = ref.watch(dashboardProvider).weather;

    log(weaterhState.value);
    IconData icon;
    switch (weaterhState) {
      case WeatherType.rainy:
        // do something
        icon = Icons.umbrella_outlined;
        break;
      case WeatherType.sunny:
        // do something else
        icon = Icons.sunny;
        break;
      case WeatherType.none:
        // TODO: Handle this case.
        icon = Icons.nat;
        break;
      case WeatherType.snowy:
        icon = Icons.snowing;
        // TODO: Handle this case.
        break;
    }
    var theme = Theme.of(context).textTheme.labelMedium;
    return BoxWidget(
      title: "Wetter",
      child: weaterhState == WeatherType.none
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ort: Mainz",
                    style: theme,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Aktuelles Wetter:",
                        style: theme,
                      ),
                      Icon(icon)
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
