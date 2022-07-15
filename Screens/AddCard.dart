import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/Widgets/Card_Info.dart';
import 'package:test/Widgets/small_card.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          trailing: IconButton(
            alignment: Alignment.center,
            iconSize: 38,
            splashRadius: 25,
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.filter_list_rounded),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: IconButton(
          alignment: Alignment.center,
          iconSize: 30,
          splashRadius: 25,
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: const [
                  Text(
                    'Add',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Card',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            MyCard(
              balance: '------',
              card_number: '---- ----',
              expi: '--/--',
              color: Colors.grey.shade300,
              colwl: Colors.grey.shade500,
              imge: 'Images/bank-building.png',
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Select Your Bank  ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: [AddBank(), AddBank(), AddBank()],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

AddBank() {
  return Wrap(
    spacing: 30,
    runSpacing: 20,
    children: [
      SmallCard(
          small_color: Colors.redAccent.shade100,
          col: 100,
          height: 120,
          isTrue: false,
          task: 'HSBC Bank',
          img: Image.asset(
            'Images/hsbc.png',
            height: 65,
            width: 80,
          )),
      SmallCard(
          small_color: Colors.orange.shade300,
          col: 100,
          height: 120,
          isTrue: false,
          task: 'PNC Bank',
          img: Image.asset(
            'Images/pnc.png',
            height: 65,
          )),
      SmallCard(
          small_color: Colors.blue.shade200,
          col: 100,
          height: 120,
          isTrue: false,
          task: 'Citi Bank',
          img: Image.asset(
            'Images/citi.png',
            height: 65,
          )),
    ],
  );
}
