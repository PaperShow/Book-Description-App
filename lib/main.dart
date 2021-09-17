import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:testing/bookView.dart';
import 'package:testing/components/bookBlue_Print.dart';
import 'package:testing/components/bookCategory.dart';
import 'package:testing/components/flutterTextField.dart';
import 'package:testing/components/imageSlide.dart';
import 'package:testing/modals/bestSellerList.dart';
import 'package:testing/modals/trendingList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: () {
              // Drawer(
              //   child: Column(
              //     children: [
              //       Container(
              //         height: 100,
              //         color: Colors.amber,
              //       )
              //     ],
              //   ),
              // );
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(
                Icons.lock_outline,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: CircleAvatar(
                // backgroundImage: NetworkImage(
                //     "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MyTextField(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageSlide(
                    size: size,
                    Height: size.height * 0.17,
                    Width: size.width * 0.8,
                    bookText: "Relaxing\nBook",
                    urlText:
                        "https://st4.depositphotos.com/18442272/22860/i/450/depositphotos_228608614-stock-photo-espresso-coffee-books.jpg",
                  ),
                  ImageSlide(
                    size: size,
                    Height: size.height * 0.17,
                    Width: size.width * 0.8,
                    bookText: "Exciting\nBooks",
                    urlText:
                        "https://i.pinimg.com/originals/67/18/22/671822c2f63dd5f65d8fd15c9710420b.jpg",
                  ),
                  ImageSlide(
                    size: size,
                    Height: size.height * 0.17,
                    Width: size.width * 0.8,
                    bookText: "Love \nStory",
                    urlText: "https://wallpaperaccess.com/full/3677077.jpg",
                  )
                ],
              ),
            ),
            NeumorphicText(
              'CATEGORIES',
              textAlign: TextAlign.start,
              style: NeumorphicStyle(
                  color: Colors.white,
                  depth: 10,
                  intensity: 0.7,
                  shadowDarkColor: Colors.teal,
                  lightSource: LightSource.topLeft),
              textStyle: NeumorphicTextStyle(
                  fontSize: 60, fontWeight: FontWeight.w900),
            ),
            //
            Row(
              children: [
                BookCategory(
                  press: () {},
                  title: 'Literacy',
                  bgUrl:
                      "https://i.pinimg.com/originals/67/18/22/671822c2f63dd5f65d8fd15c9710420b.jpg",
                ),
                BookCategory(
                  press: () {},
                  title: 'Financial',
                  bgUrl:
                      "https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&w=1000&q=80",
                ),
                BookCategory(
                  press: () {},
                  title: 'StartUps',
                  bgUrl:
                      "https://t3.ftcdn.net/jpg/03/13/53/94/360_F_313539495_TIfAx53PwhMQopiuu7J1RiY2lVzSWrep.jpg",
                ),
              ],
            ),
            Row(
              children: [
                BookCategory(
                  press: () {},
                  title: 'Sci-fi',
                  bgUrl:
                      "https://us.123rf.com/450wm/perhapzzz/perhapzzz1603/perhapzzz160300384/53680862-open-book-hardback-books-on-wooden-table-back-to-school-copy-space-for-text-.jpg?ver=6",
                ),
                BookCategory(
                  press: () {},
                  title: 'Contemporary',
                  bgUrl:
                      "https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&w=1000&q=80",
                ),
                BookCategory(
                  press: () {},
                  title: 'More',
                  bgUrl:
                      "https://images2.alphacoders.com/261/thumb-1920-26102.jpg",
                ),
              ],
            ),
            TrendingList(),
            BestSellerList(),
          ],
        ),
      ),
    );
  }
}
