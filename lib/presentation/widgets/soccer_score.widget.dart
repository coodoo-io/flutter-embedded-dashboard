import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/data/providers.dart';
import 'package:sample/presentation/models/dashboard.model.dart';
import 'package:sample/presentation/widgets/box.widget.dart';

class SoccerScore extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var weaterhState = ref.watch(dashboardProvider).weather;

    var theme = Theme.of(context).textTheme.labelMedium;
    return BoxWidget(
      title: "Soccer Score",
      child: weaterhState == null
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aktuelle News",
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
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
