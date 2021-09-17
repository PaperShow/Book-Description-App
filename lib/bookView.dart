import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.6 + 30,
              child: Stack(
                children: [
                  Container(
                    color: Colors.lightGreen,
                    height: size.height * 0.6,
                    width: double.infinity,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    height: size.height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BackButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: Colors.white,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        Container(
                          height: 220,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images-eu.ssl-images-amazon.com/images/I/51u8ZRDCVoL._SX342_SY445_QL70_ML2_.jpg"),
                            ),
                          ),
                        ),
                        Text('Rich Dad Poor Dad',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                        Text('By Robert Kiyosaki',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: Colors.white.withOpacity(0.7))),
                        Row(
                          children: [
                            BookOverView(
                              title: 'Rating',
                              subtitle: '4.7',
                            ),
                            BookOverView(
                              title: 'Pages',
                              subtitle: '104',
                            ),
                            BookOverView(
                              title: 'Language',
                              subtitle: 'ENG',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 60,
                    right: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.blueGrey[800],
                          fixedSize: Size(180, 50)),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'What\'s it About ?',
                    style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'It advocates the importance of financial literacy (financial education), financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one\'s financial intelligence (financial IQ).',
                    style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 0.3,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookOverView extends StatelessWidget {
  BookOverView({this.subtitle, this.title});
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text('$title',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white.withOpacity(0.6))),
          Text('$subtitle',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white, fontSize: 28))
        ],
      ),
    );
  }
}
