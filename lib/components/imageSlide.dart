import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ImageSlide extends StatelessWidget {
  ImageSlide({
    required this.size,
    required this.bookText,
    required this.urlText,
    required this.Height,
    required this.Width,
  });

  final Size size;
  final String bookText;
  final String urlText;
  final double Width;
  final double Height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        width: Width,
        height: Height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.teal.shade400,
                      offset: Offset(5, 5),
                      blurRadius: 15,
                      spreadRadius: 2)
                ],
                image: DecorationImage(
                  image: NetworkImage("$urlText"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                '$bookText',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
