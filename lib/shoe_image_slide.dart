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
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/shoes_${index+1}.png'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
