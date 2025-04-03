import 'package:flutter/material.dart';

class ShoeImageSlide extends StatefulWidget {
  const ShoeImageSlide({super.key});

  @override
  State<ShoeImageSlide> createState() => _ShoeImageSlideState();
}

class _ShoeImageSlideState extends State<ShoeImageSlide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              height: 350,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 5,
                child: Stack(
                  children: [
                    Positioned(top: 20,left: 30,child: Text('Hello\n\$33.3')),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/shoes_${index + 1}.png',
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
