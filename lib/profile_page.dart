import 'package:flutter/material.dart';
import 'package:shopping_app/row_function.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 50,
                        foregroundImage: AssetImage(
                          'assets/images/Mukunthan_Photo.jpg',
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mukunthan P',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'xxxx@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    RowItems(
                      icon: Icons.favorite_border_sharp,
                      string: 'Favourites',
                    ),
                    RowItems(
                      icon: Icons.shopping_cart_checkout_outlined,
                      string: 'Checkout',
                    ),
                    RowItems(icon: Icons.language_outlined, string: 'Language'),
                    RowItems(
                      icon: Icons.location_on_outlined,
                      string: 'Location',
                    ),
                    RowItems(icon: Icons.history_outlined, string: 'History'),
                    RowItems(icon: Icons.logout_outlined, string: 'Log Out'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
