// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:isolate';

import 'package:ewalate_ui_ux/util/mt_buttom.dart';
import 'package:ewalate_ui_ux/util/my_card.dart';
import 'package:ewalate_ui_ux/util/my_list_title.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[400],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, size: 32, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // app Bar
                children: [
                  Row(
                    children: [
                      const Text(
                        ' My ',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),

                      // plus Buttom
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            // cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5034.20,
                    cardNumber: 121231,
                    expiryMount: 10,
                    expiryYear: 25,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 1223.20,
                    cardNumber: 2341212,
                    expiryMount: 12,
                    expiryYear: 26,
                    color: Colors.deepOrange[400],
                  ),
                  MyCard(
                    balance: 1343.20,
                    cardNumber: 2454212,
                    expiryMount: 9,
                    expiryYear: 23,
                    color: Colors.blueGrey[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(
              height: 25,
            ),

            //3 buttins -> sebd + pay + bills

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send Bottom
                  MyButtom(
                      buttomText: 'Send',
                      iconImgaepact: 'assets/icon/cash-flow.png'),
                  MyButtom(
                      buttomText: 'Pay',
                      iconImgaepact: 'assets/icon/apple-pay.png'),
                  const MyButtom(
                      buttomText: 'Bills',
                      iconImgaepact: 'assets/icon/biil.png')
                ],
              ),
            ),

            //colum -> stats + transactions

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MYListtiile(
                      img: 'assets/icon/analysis.png',
                      statisticText: 'Statsistic',
                      subTitleText: 'Paymen and Icome'),
                  MYListtiile(
                      img: 'assets/icon/cash-flow.png',
                      statisticText: 'Transactions',
                      subTitleText: 'Transaction History'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
