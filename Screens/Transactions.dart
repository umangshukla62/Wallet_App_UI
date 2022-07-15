import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    super.key,
  });

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
            const SizedBox(
              height: 20,
            ),
            transac(
              isMoney: false,
              name: 'Rubert',
              money: r'+ $21',
              use: '(Burger)',
              imge: Image.asset(
                'Images/o.png',
                width: 60,
                height: 50,
              ),
              transact: Colors.green,
            ),
            transac(
              isMoney: false,
              name: 'Sarah',
              money: r'- $68',
              use: '(Chair)',
              imge: Image.asset('Images/r.png'),
              transact: Colors.red,
            ),
            transac(
              isMoney: false,
              name: 'Daniel',
              money: r'- $100',
              use: '(Shoes)',
              imge: Image.asset(
                'Images/p.png',
                height: 20,
                width: 40,
              ),
              transact: Colors.red,
            ),
            transac(
              isMoney: false,
              name: 'Karl',
              money: r'+ $25',
              use: '(Burger)',
              imge: Image.asset('Images/m.png'),
              transact: Colors.green,
            ),
            transac(
              isMoney: false,
              name: 'John',
              money: r'- $32',
              use: '(Pizza)',
              imge: Image.asset('Images/n.png'),
              transact: Colors.red,
            ),
            transac(
              isMoney: false,
              name: 'Monica',
              money: r'+ $40  ',
              use: '(Dinner)',
              imge: Image.asset('Images/s.png'),
              transact: Colors.green,
            ),
            transac(
              isMoney: false,
              name: 'Daniel',
              money: r'+ $295',
              use: '(Monitor)',
              imge: Image.asset('Images/p.png'),
              transact: Colors.green,
            ),
            transac(
              isMoney: false,
              name: 'Rubert',
              money: r'- $200',
              use: '(Headphones)',
              imge: Image.asset('Images/o.png'),
              transact: Colors.red,
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

class transac extends StatelessWidget {
  final imge;
  final String name;
  final money;
  final String use;
  final transact;
  final card;
  bool isMoney = false;
  transac(
      {super.key,
      this.imge,
      required this.name,
      this.money,
      required this.use,
      this.transact,
      required this.isMoney,
      this.card});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey.shade500)
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            height: 90,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(3),
                    child: imge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          use,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (isMoney == false)
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      height: 40,
                      child: Text(
                        money,
                        style: TextStyle(
                            color: transact,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  if (isMoney == true)
                    const SizedBox(
                      width: 100,
                    )
                ],
              ),
            ),
          ),
        )
      ],
    ));
    ;
  }
}
