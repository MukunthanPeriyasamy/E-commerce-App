import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                borderRadius: BorderRadiusDirectional.circular(20)
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(elevation: 1),
                child: Text(buttons[index],style: TextStyle(overflow: TextOverflow.ellipsis),),
              ),
            ),
          );
        },
      ),
    );
  }
}
