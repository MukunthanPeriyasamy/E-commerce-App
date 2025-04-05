import 'package:flutter/material.dart';

class ListButtons extends StatefulWidget {
  const ListButtons({super.key});

  @override
  State<ListButtons> createState() => _ListButtonsState();
}

List<String> buttons = [
  'All',
  'Addidas',
  'Nike',
  'Bata',
  'Jordan',
  'Skechers',
  'Walkaro',
  'Woodland',
  'Pumaa',
  'Crocs',
];

class _ListButtonsState extends State<ListButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: Chip(
                side: BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                label: Text(
                  buttons[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
