import 'package:flutter/material.dart';
import 'package:testing/bookView.dart';
import 'package:testing/components/bookBlue_Print.dart';
import 'package:testing/modals/book_dialog.dart';

class TrendingList extends StatelessWidget {
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
                'Trending',
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
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookView()));
                },
                imgUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/61M1eEsuSML.jpg',
                title: 'Rich Dad\nPoor Dad',
                subtitle: 'Personal Finance',
              ),
              BookBluePrint(
                  press: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            children: [
                              SimpleDialogOption(
                                child: Column(
                                  children: [
                                    Text(
                                      'Title of the book',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('By Peter Thiel'),
                                    Text('Startups'),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.network(
                                        'https://images-na.ssl-images-amazon.com/images/I/71m-MxdJ2WL.jpg',
                                        scale: 8,
                                      ),
                                    ),
                                    Text(
                                      '"Zero to One" describes the process of creating something radically new and taking it to the first step (or intensive growth). The phrase is used in contrast to the term "1 to n" (or extensive growth), which means creating incremental improvements to what is already familiar. For most people, it is easier to do things from "1 to n" than from "zero to one", so the vast majority of human effort is done on "1 to n" tasks.',
                                      style: TextStyle(fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/71m-MxdJ2WL.jpg',
                  subtitle: 'StartUps',
                  title: 'Zero To One'),
              BookBluePrint(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/71951W96oWL.jpg',
                  subtitle: 'Self Help Book',
                  title: 'The 48 Laws\nof Power'),
              BookBluePrint(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/91bYsX41DVL.jpg',
                  subtitle: 'Self-Help',
                  title: 'Atomic Habits')
            ],
          ),
        )
      ],
    );
  }
}
