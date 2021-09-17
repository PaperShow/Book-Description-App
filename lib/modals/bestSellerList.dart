import 'package:flutter/material.dart';
import 'package:testing/components/bookBlue_Print.dart';

class BestSellerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BestSeller',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BookBluePrint(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/91Q5dCjc2KL.jpg',
                  subtitle: 'Mystery/Thriller/detective',
                  title: 'The Da Vinci Code'),
              BookBluePrint(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/91Q5dCjc2KL.jpg',
                  subtitle: 'Mystery/Thriller/detective',
                  title: 'The Da Vinci Code'),
              BookBluePrint(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/91Q5dCjc2KL.jpg',
                  subtitle: 'Mystery/Thriller/detective',
                  title: 'The Da Vinci Code')
            ],
          ),
        )
      ],
    );
  }
}
