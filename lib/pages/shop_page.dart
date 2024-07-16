import 'package:flutter/material.dart';
import 'package:magazin/components/yakta_kofe.dart';
import 'package:magazin/constants.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List kofeho = [
    ['Kapuchino', '4.23', 'images/coffee-cup.png'],
    ['Expresson', '9.123', 'images/coffee.png'],
    ['Amerikano', '43.1 ', 'images/hot-coffee.png']
  ];

  void addToMyCart(index) {
    setState(() {
      mykoffee.add(kofeho[index]);
    });

    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pop();
      },
    );
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Kofei intixobkardai Shumo bo muvaffakiyat dar kartaaton ilova karda shud",
              style: TextStyle(color: Colors.green),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Kadom namud kofe mexohed?",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kofeho.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () => addToMyCart(index),
                    child: YaktaKofe(
                      imagePath: kofeho[index][2],
                      name: kofeho[index][0],
                      price: kofeho[index][1],
                      icon: Icon(Icons.add),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
