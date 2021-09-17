import 'package:flutter/material.dart';

class BookBluePrint extends StatelessWidget {
  BookBluePrint(
      {required this.imgUrl,
      required this.subtitle,
      required this.title,
      this.press});

  final String imgUrl;
  final String title;
  final String subtitle;
  final dynamic press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  child: Image.network(
                    '$imgUrl',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '$title',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$subtitle',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
