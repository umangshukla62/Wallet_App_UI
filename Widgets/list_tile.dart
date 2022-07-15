import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:test/Screen/Statistics.dart';
import 'package:test/Widgets/Transactions.dart';

class ListtILE extends StatelessWidget {
  const ListtILE({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              // boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade600)],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            // gradient: LinearGradient(colors: [
            //  Colors.deepOrange.shade300,
            //Colors.deepOrange.shade700
            //], begin: Alignment.bottomCenter, end: Alignment.topCenter)
            height: 60,
            width: 390,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'Images/analysis.png',
                  height: 40,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Statistics',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily:
                              'Fonts/Inconsolata-VariableFont_wdth,wght'),
                    ),
                    Text(
                      '(Payments And Income)',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                    splashColor: Colors.transparent,
                    splashRadius: 1,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Statistics()));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            height: 60,
            width: 380,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('Images/transaction.png'),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Transactions ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '(List of Transactions)',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Transactions()));
                    },
                    splashRadius: 1,
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
