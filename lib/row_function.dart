import 'package:flutter/material.dart';

class RowItems extends StatelessWidget {
  const RowItems({super.key, required this.icon, required this.string});

  final IconData icon;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            string,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
