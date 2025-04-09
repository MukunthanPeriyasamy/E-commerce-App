import 'package:flutter/material.dart';

class ListButtons extends StatefulWidget {
  const ListButtons({super.key});

  @override
  State<ListButtons> createState() => _ListButtonsState();
}

late String selectedFilter;

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
  void initState() {
    super.initState();
    selectedFilter = buttons[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          final filter = buttons[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedFilter == filter ? Colors.amber : Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    selectedFilter = filter;
                  });
                },
                child: Text(
                  filter,
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
