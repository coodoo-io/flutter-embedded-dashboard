// ignore: must_be_immutable
import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  late Widget child;
  late String title;
  BoxWidget({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    var containerHeight = (MediaQuery.of(context).size.height - 200) / 2;
    // TODO: implement build
    return Column(
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
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.deepPurple,
                  Colors.black,
                ],
              ),
              border: Border.all(color: Colors.transparent, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(
                      5.0) //                 <--- border radius here
                  )),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.deepPurple.withOpacity(0.2),
                    ],
                    stops: [
                      0.85,
                      1
                    ]),
              ),
              child: Center(child: child),
            ),
          ),
        )
      ],
    );
  }
}
