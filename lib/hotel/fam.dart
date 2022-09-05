import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ucsi/hmenu.dart';

void main() {
  runApp(const fam());
}

class fam extends StatelessWidget {
  const fam({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Menu',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Nunito",
      ),
      home: const MyHomePage(title: 'Le Quadri Room'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => hmenu()),
              );
            },
          ),
          centerTitle: true,
          title: Text("Family package"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'Family package img $i ',
                          style: TextStyle(fontSize: 20.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: const Text('   Review   ',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.orange,
                    textColor: Colors.white,
                    elevation: 5,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Text('   Contact   ',
                        style: TextStyle(fontSize: 20)),
                    color: Colors.orange,
                    textColor: Colors.white,
                    elevation: 5,
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30.0),
              width: 380.0,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Offerings: \n \n 1. Wi-fi \n 2. Balcony \n 3. Hot Tub' +
                            '\n 4. King Size bed + Two beds \n 5. Locker Facilities \n 6. Non-smooking rooms' +
                            '\n 7. Centralized A/C + Heater \n 8. Laundry Service \n 9. Indoor pool' +
                            '\n 10. Gym center \n 11. Bar available',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 16,
                            child: Container(
                              child: ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Center(child: Text('Booking details')),
                                  SizedBox(height: 20),
                                  Column(
                                    children: [
                                      Center(
                                        child: Text(
                                            '  Family Package                           RM 35.99'),
                                      ),
                                      SizedBox(height: 20),
                                      Text('Choose payment method: '),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.mobile_friendly_sharp,
                                              size: 50),
                                          Icon(Icons.location_city, size: 50),
                                          Icon(Icons.payment, size: 50),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(' Mobile\npayment'),
                                          Text(' Online\nBanking'),
                                          Text('PayPal'),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child:
                        const Text('Book now!', style: TextStyle(fontSize: 20)),
                    color: Colors.orange,
                    textColor: Colors.white,
                    elevation: 5,
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
