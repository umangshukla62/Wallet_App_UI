import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  String balance;
  String card_number;
  String expi;
  final color;
  final colwl;
  final imge;
  MyCard(
      {super.key,
      required this.balance,
      required this.card_number,
      required this.expi,
      required this.color,
      this.colwl,
      this.imge});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 200,
      width: 390,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade900)],
          color: color,
          borderRadius: BorderRadius.circular(30),
          gradient: RadialGradient(
              colors: [color, colwl], radius: 0.9, stops: [0, 10])),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Balance :',
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              Image.asset(
                imge,
                width: 50,
                height: 50,
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            balance,
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 44,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                card_number,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                expi,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
