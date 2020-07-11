import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './product_card.dart';
import './accordion.dart';

void main() {
  //This is added to make the status bar transparent
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var padding_left = 100;
  int _index = 0;
  void print_result() {
    print('answer selected');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //This is added to remove the debug banner on top right corner of the application screen
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 500,
                      width: double.infinity,
                      //decoration: BoxDecoration(color: Colors.cyan),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            top: -30,
                            left: 180,
                            child: Container(
                              height: 800,
                              width: 800,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: Color.fromRGBO(255, 100, 0, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 30, right: 30, bottom: 50),
                        //decoration: BoxDecoration(color: Colors.grey),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 60, bottom: 80),
                              width: double.infinity,
                              //decoration: BoxDecoration(color: Colors.blue),
                              child: Image.asset(
                                'assets/images/nike-logo.png',
                                height: 40,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'Bringing',
                                  style: TextStyle(
                                    fontFamily: 'Nike',
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Inspiration, \nInnovation',
                                  style: TextStyle(
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 1,
                                    //fontFamily: 'Futura',
                                    fontSize: 55,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  'to every athlete in the world',
                                  style: TextStyle(
                                    fontFamily: 'Nike',
                                    fontSize: 43,
                                    letterSpacing: -2,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 100),
                                  child: Opacity(
                                    opacity: .3,
                                    child: Image.asset(
                                      'assets/images/scroll-down-indicator.png',
                                      height: 60,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              //
              //
              //
              //
              //
              //
              //The orignal section
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30, 60, 0, 0),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  'The Orignal.',
                  style: TextStyle(
                    /*foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1,*/
                    fontFamily: 'Nike',
                    fontSize: 40,
                    // fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30, 0, 0, 40),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  'Made your way.',
                  style: TextStyle(
                    fontFamily: 'Nike',
                    fontSize: 40,
                    //fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 40),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  'Represent who you are and where you come form using Nike Air Max. Create yours with orignal material options, a range of colours and a perosnal message to express your style and your passion',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Futura',
                    height: 1.5,
                    fontSize: 21,
                    color: Color.fromRGBO(0, 0, 0, .5),
                    //fontWeight: FontWeight.w100,
                    //letterSpacing: .5,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 40, left: 30),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  '+  Show More'.toUpperCase(),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 15,
                    //fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              //image container
              Container(
                padding: EdgeInsets.only(top: 40, bottom: 60),
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Image(
                  image: AssetImage('assets/images/nike-shoe-img.png'),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 30, bottom: 40),
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Nike Air Max 90',
                      style: TextStyle(
                        fontFamily: 'Nike',
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        '\$ 130.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Futura',
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Section-2
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 60, bottom: 50),
                decoration: BoxDecoration(color: Color.fromRGBO(28, 27, 32, 1)),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Speed knows no limit',
                        style: TextStyle(
                          fontFamily: 'Nike',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Get gone in football's fastest cheat  | \nThe Nike Vapour Untouchable",
                        style: TextStyle(
                          fontFamily: 'Futura',
                          fontSize: 17,
                          color: Color.fromRGBO(255, 255, 255, .5),
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        '+  show more'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Futura',
                          letterSpacing: .5,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //SHOP SECTION
              Container(
                width: double.infinity,
                //padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      padding: EdgeInsets.fromLTRB(40, 30, 0, 30),
                      width: double.infinity,
                      child: Text(
                        'Shop',
                        style: TextStyle(
                          fontFamily: 'Nike',
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            productCard(
                              marginLeft: 40,
                              index: '01',
                              shoeName: 'Nike Air Max 80',
                              gradientStart: Color.fromRGBO(4, 93, 233, 1),
                              gradientEnd: Color.fromRGBO(0, 249, 253, 1),
                            ),
                            productCard(
                              index: '02',
                              shoeName: 'Nike Air Jordan',
                              path: 'assets/images/red.png',
                              gradientStart: Color.fromRGBO(254, 95, 117, 1),
                              gradientEnd: Color.fromRGBO(252, 152, 66, 1),
                            ),
                            productCard(
                              index: '03',
                              shoeName: 'Nike Blazer',
                              path: 'assets/images/green.png',
                              gradientStart: Color.fromRGBO(17, 153, 142, 1),
                              gradientEnd: Color.fromRGBO(28, 230, 105, 1),
                            ),
                            productCard(
                              index: '04',
                              shoeName: 'Nike Blazer',
                              path: 'assets/images/orange.png',
                              gradientStart: Color.fromRGBO(252, 74, 26, 1),
                              gradientEnd: Color.fromRGBO(247, 183, 51, 1),
                              marginRight: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //accordion section
              Container(
                child: Column(
                  children: <Widget>[
                    //image container
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 50, 0, 50),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: Image.asset(
                        'assets/images/nike-logo.png',
                        height: 30,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    accordion(
                      title: 'about',
                      content:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    ),
                    accordion(
                      title: 'men',
                      content:
                          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    ),
                    accordion(
                      title: 'women',
                      content:
                          "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    ),
                    accordion(
                      title: 'kids',
                      content:
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                    ),
                    accordion(
                      title: 'features',
                      content:
                          "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    ),
                  ],
                ),
              ),

              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(246, 244, 247, 1)),
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(40, 50, 0, 50),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Text(
                        'gift card \nstudent discount \nmilitary discount \nfind a store \nsign up with email'
                            .toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Futura',
                          height: 2,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color.fromRGBO(28, 27, 32, 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
