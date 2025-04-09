import 'package:flutter/material.dart';
import 'package:shopping_app/list_buttons.dart';
import 'package:shopping_app/shoe_image_slide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

SearchController _controller = SearchController();

class _HomePageState extends State<HomePage> {
  List<String> suggestions = [
    'Addidas',
    'Nike',
    'Bata',
    'Walkaro',
    'WoodLand',
    'Sketchers',
    'Jordan',
  ];


int _currentIndex = 0;

 void _currentIndexChange(int index){
  setState(() {
    _currentIndex = index;
  });
 }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Shoe\nCollections',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchAnchor.bar(
                      barTextStyle: WidgetStatePropertyAll(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      searchController: _controller,
                      suggestionsBuilder: (context, searchText) {
                        return suggestions.map((value) {
                          return ListTile(
                            title: Text(
                              value,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              _controller.text = value;
                              _controller.closeView(value);
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          );
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ListButtons(),
            SizedBox(height: 15),
            ShoeImageSlide(),
            BottomNavigationBar(
            selectedFontSize: 16,
            unselectedFontSize: 16,
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: _currentIndexChange,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person')
            ])
          ],
        ),
      ),
    );
  }
}
