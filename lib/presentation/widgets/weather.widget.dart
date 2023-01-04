import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/models/dashboard.model.dart';
import 'package:sample/presentation/widgets/box.widget.dart';

class WeatherWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var weaterhState = ref.watch(dashboardProvider).weather;

    var theme = Theme.of(context).textTheme.labelMedium;
    return BoxWidget(
      title: "Wetter",
      child: weaterhState == null
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent.withOpacity(0.5),
                          border:
                              Border.all(color: Colors.purpleAccent, width: 1),
                          borderRadius:
                              BorderRadius.all(Radius.circular(45.0))),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              "${weaterhState.location.name}",
                              style: theme,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    weaterhState.current.is_day == 1
                        ? Icon(Icons.sunny)
                        : Icon(Icons.nightlight_outlined),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      weaterhState.current.condition.icon.isNotEmpty
                          ? Container(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                  'https:${weaterhState.current.condition.icon}'))
                          : const SizedBox(
                              width: 80,
                              height: 80,
                            ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${weaterhState.current.temp_c.toStringAsFixed(1)}°C',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
