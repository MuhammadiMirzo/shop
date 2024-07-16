import 'package:flutter/material.dart';

class YaktaKofe extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final Icon icon;

  const YaktaKofe({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(name),
        subtitle: Text(price),
        trailing: icon,
      ),
    );
  }
}
