import 'package:flutter/material.dart';
import 'package:magazin/components/yakta_kofe.dart';
import 'package:magazin/constants.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteFromCart(index) {
    setState(() {
      mykoffee.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              "My KOfes",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: mykoffee.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => deleteFromCart(index),
                        child: YaktaKofe(
                          name: mykoffee[index][0],
                          price: mykoffee[index][1],
                          imagePath: mykoffee[index][2],
                          icon: Icon(Icons.delete),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
