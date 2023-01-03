// ignore: must_be_immutable
import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  late Widget child;
  late String title;
  BoxWidget({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    var containerWidth = (MediaQuery.of(context).size.width - 80) / 3;
    var containerHeight = (MediaQuery.of(context).size.height - 80) / 3;
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black,
                    Colors.blueGrey,
                  ],
                ),
                border: Border.all(color: Colors.transparent, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(
                        5.0) //                 <--- border radius here
                    )),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: containerWidth,
                height: containerHeight,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(
                          5.0) //                 <--- border radius here
                      ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blueGrey,
                      Colors.black,
                    ],
                  ),
                ),
                child: Center(child: child),
              ),
            ),
          )
        ],
      ),
    );
  }
}
