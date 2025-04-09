import 'package:flutter/material.dart';

class ShoeImageSlide extends StatefulWidget {
  const ShoeImageSlide({super.key});

  @override
  State<ShoeImageSlide> createState() => _ShoeImageSlideState();
}

final List<String> shoeDetaiils = [
  'Men\'s Nike Shoe\n\$44.52',
  'Addidas Shoes\n\$20.12',
  'Woodland Walkers\n\$30.52',
  'Bata Men\'s wear\n\$44.52',
];

class _ShoeImageSlideState extends State<ShoeImageSlide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: 350,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Card(
              surfaceTintColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              elevation: 5,
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: (){},
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Text(
                        shoeDetaiils[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/shoes_${index + 1}.png',
                        height: 200,
                        fit: BoxFit.fill,
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
