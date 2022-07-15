import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/Screen/Transfer.dart';
import 'package:test/Widgets/Transactions.dart';

class SmallCard extends StatelessWidget {
  bool isTrue = false;
  final String task;
  final img;
  double col;
  final small_color;
  double height;
  SmallCard({
    super.key,
    required this.task,
    this.img,
    required this.isTrue,
    required this.height,
    required this.col,
    required this.small_color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all<Color>(Colors.white60),
              backgroundColor: MaterialStateProperty.all<Color>(
                small_color,
              ),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
              elevation: MaterialStateProperty.all(7),
              fixedSize: MaterialStatePropertyAll(Size(col, height))),
          onPressed: () {
// ignore: void_checks
            if (isTrue == true) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Transfer()));
            }
          },
          child: Column(
            children: [
              img,
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                  child: Text(
                task,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
