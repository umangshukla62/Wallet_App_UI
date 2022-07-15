import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test/Widgets/Card_Info.dart';
import 'package:test/Widgets/Transactions.dart';
import 'package:test/Widgets/add_card.dart.dart';
import 'package:test/Widgets/list_tile.dart';
import 'package:test/Widgets/small_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Color scaffcolor = Colors.black;

  Color textcol = Colors.white;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        splashColor: Colors.redAccent.shade400,
        backgroundColor: Colors.red.shade400,
        child: const Icon(
          Icons.attach_money,
          size: 34,
        ),
        onPressed: () {},
      ),
      backgroundColor: textcol,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                tooltip: 'Home',
                splashColor: Colors.blueGrey,
                splashRadius: 500,
                alignment: Alignment.center,
                onPressed: (() {}),
                icon: const Icon(
                  color: Colors.black,
                  Icons.home,
                  size: 35,
                )),
            const SizedBox(
              width: 40,
            ),
            IconButton(
                tooltip: 'Setings',
                splashColor: Colors.blueGrey,
                splashRadius: 500,
                alignment: Alignment.center,
                onPressed: (() {}),
                icon: const Icon(
                  color: Colors.black,
                  Icons.settings,
                  size: 35,
                ))
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'My',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: scaffcolor),
                          ),
                          Text(
                            ' Cards',
                            style: TextStyle(fontSize: 28, color: scaffcolor),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: IconButton(
                              splashColor: Colors.grey.shade400,
                              splashRadius: 30,
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddCard()));
                              }),
                              icon: const Icon(
                                color: Colors.black,
                                Icons.add,
                                size: 30,
                              )))
                    ],
                  )),
              Container(
                  height: 240,
                  width: double.infinity,
                  child: PageView(
                    controller: _controller,
                    children: [
                      MyCard(
                          imge: 'Images/amex.png',
                          colwl: Colors.grey.shade900,
                          color: Colors.grey.shade700,
                          balance: '\$5679.07',
                          card_number: '**** 4532',
                          expi: '10/27'),
                      MyCard(
                          imge: 'Images/visa.png',
                          colwl: Colors.red.shade700,
                          color: Colors.redAccent.shade100,
                          balance: '\$356.48',
                          card_number: '**** 8976',
                          expi: '09/24'),
                      MyCard(
                          imge: 'Images/visa.png',
                          colwl: Colors.blue.shade700,
                          color: Colors.blueAccent.shade100,
                          balance: '\$1098.56',
                          card_number: '**** 3421',
                          expi: '08/28'),
                      MyCard(
                          imge: 'Images/amex.png',
                          colwl: Colors.pink.shade600,
                          color: Colors.pinkAccent.shade100,
                          balance: '\$6754.09',
                          card_number: '**** 3678',
                          expi: '07/23'),
                      MyCard(
                          imge: 'Images/visa.png',
                          colwl: Colors.deepPurple,
                          color: Colors.deepPurpleAccent.shade100,
                          balance: '\$2601.00',
                          card_number: '**** 0175',
                          expi: '05/24'),
                    ],
                  )),
              SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: SwapEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.grey.shade800,
                    spacing: 7,
                    dotHeight: 9),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallCard(
                      small_color: Colors.orangeAccent.shade100,
                      col: 80,
                      height: 120,
                      isTrue: true,
                      task: 'Transfer',
                      img: Image.asset(
                        'Images/money.png',
                        height: 60,
                      )),
                  SmallCard(
                      small_color: Colors.redAccent.shade100,
                      col: 80,
                      height: 120,
                      isTrue: true,
                      task: 'Pay',
                      img: Image.asset(
                        'Images/credit-card.png',
                        height: 60,
                      )),
                  SmallCard(
                      small_color: Colors.teal.shade200,
                      col: 80,
                      height: 120,
                      isTrue: false,
                      task: 'Bills',
                      img: Image.asset(
                        'Images/bill.png',
                        height: 60,
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ListtILE(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
