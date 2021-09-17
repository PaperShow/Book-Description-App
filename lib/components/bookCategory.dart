import 'package:flutter/material.dart';

class BookCategory extends StatelessWidget {
  BookCategory({required this.title, required this.bgUrl, required this.press});
  final dynamic press;
  final String title;
  final String bgUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        padding: EdgeInsets.only(top: 10, left: 10, right: 20, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage("$bgUrl"),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          '$title',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
