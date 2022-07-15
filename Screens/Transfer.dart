import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/Widgets/Transactions.dart';
import 'package:test/Widgets/small_card.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});
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
            icon: const Icon(Icons.filter_list_rounded),
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
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    SmallCard(
                        small_color: Colors.indigo.shade100,
                        col: 90,
                        height: 110,
                        task: '   Scan \nQR code',
                        img: const Icon(
                          Icons.qr_code_scanner,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    SmallCard(
                        small_color: Colors.green.shade100,
                        col: 90,
                        height: 110,
                        task: ' Phone\nNumber',
                        img: const Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    SmallCard(
                        small_color: Color.fromARGB(255, 255, 145, 145),
                        col: 90,
                        height: 110,
                        task: 'Contacts',
                        img: const Icon(
                          Icons.perm_contact_cal_sharp,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    SmallCard(
                        small_color: Colors.lightBlue.shade100,
                        col: 90,
                        height: 110,
                        task: '   Self\nTransfer',
                        img: const Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    SmallCard(
                        small_color: Colors.lime.shade100,
                        col: 90,
                        height: 110,
                        task: '   Mobile\nRecharge',
                        img: const Icon(
                          Icons.phone_android_sharp,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    SmallCard(
                        small_color: Color.fromARGB(255, 255, 183, 208),
                        col: 90,
                        height: 110,
                        task: ' Pay\nBills',
                        img: const Icon(
                          Icons.list_alt_rounded,
                          color: Colors.black,
                          size: 40,
                        ),
                        isTrue: false),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'To ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      iconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.black12,
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                )),
            const SizedBox(
              height: 15,
            ),
            transac(
              isMoney: true,
              name: 'Rubert',
              use: '+91 1111100000',
              imge: Image.asset(
                'Images/o.png',
              ),
              transact: Colors.black,
            ),
            transac(
              isMoney: true,
              name: 'Sarah',
              use: '+91 2222200000',
              imge: Image.asset('Images/r.png'),
              transact: Colors.black,
            ),
            transac(
              isMoney: true,
              name: 'Daniel',
              use: '+91 3333300000',
              imge: Image.asset(
                'Images/p.png',
                height: 20,
                width: 40,
              ),
              transact: Colors.black,
            ),
            transac(
              isMoney: true,
              name: 'Karl',
              use: '+91 4444400000',
              imge: Image.asset('Images/m.png'),
              transact: Colors.black,
            ),
            transac(
              isMoney: true,
              name: 'John',
              use: '+91 555500000',
              imge: Image.asset('Images/n.png'),
              transact: Colors.black,
            ),
            transac(
              isMoney: true,
              name: 'Monica',
              use: '+91 666600000',
              imge: Image.asset('Images/s.png'),
              transact: Colors.black,
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
