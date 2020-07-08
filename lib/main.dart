import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                                      ..strokeWidth = 1.3,
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
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
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

              //SHOP SECTION
              Container(
                width: double.infinity,
                //padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 30, 0, 30),
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
                      //padding: EdgeInsets.only(right: 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 40, right: 20),
                              width: 250,
                              height: 380,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(1, 54, 175, 1),
                                    Color.fromRGBO(56, 182, 255, 1),
                                  ],
                                  begin: Alignment(-1.0, -1.5),
                                  end: Alignment(1.0, 1.5),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Text(
                                      '01',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'Nike',
                                        fontWeight: FontWeight.w900,
                                        color:
                                            Color.fromRGBO(255, 255, 255, .5),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -30,
                                    top: 10,
                                    child: Transform.rotate(
                                      angle: -0.4,
                                      child: Image.asset(
                                        'assets/images/blue.png',
                                        width: 280,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 220,
                                    left: 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Nike Air Max 70',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: .5,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '\$  140',
                                            style: TextStyle(
                                              fontFamily: 'Futura',
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 11,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(50, 17, 50, 13),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Text(
                                              'add to Cart'.toUpperCase(),
                                              style: TextStyle(
                                                fontFamily: 'Futura',
                                                fontSize: 19,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.add_shopping_cart),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              width: 250,
                              height: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(1, 54, 175, 1),
                                    Color.fromRGBO(56, 182, 255, 1),
                                  ],
                                  begin: Alignment(-1.0, -1.5),
                                  end: Alignment(1.0, 1.5),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 40),
                              width: 250,
                              height: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(1, 54, 175, 1),
                                    Color.fromRGBO(56, 182, 255, 1),
                                  ],
                                  begin: Alignment(-1.0, -1.5),
                                  end: Alignment(1.0, 1.5),
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //accordion section
              Container(
                child: Column(
                  children: <Widget>[
                    //image container
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 40, 0, 20),
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
                    //main container
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 15, top: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: ExpansionTile(
                        backgroundColor: Color.fromRGBO(246, 244, 247, 1),
                        title: Text(
                          'about'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            letterSpacing: .5,
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 30, 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 244, 247, 1)),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: ExpansionTile(
                        backgroundColor: Color.fromRGBO(246, 244, 247, 1),
                        title: Text(
                          'men'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            letterSpacing: .5,
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 30, 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 244, 247, 1)),
                            child: Text(
                              "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: ExpansionTile(
                        backgroundColor: Color.fromRGBO(246, 244, 247, 1),
                        title: Text(
                          'women'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            letterSpacing: .5,
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 30, 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 244, 247, 1)),
                            child: Text(
                              "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: ExpansionTile(
                        backgroundColor: Color.fromRGBO(246, 244, 247, 1),
                        title: Text(
                          'kids'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            letterSpacing: .5,
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 30, 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 244, 247, 1)),
                            child: Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 244, 247, 1),
                      ),
                      child: ExpansionTile(
                        backgroundColor: Color.fromRGBO(246, 244, 247, 1),
                        title: Text(
                          'features'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            letterSpacing: .5,
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 10, 30, 20),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 244, 247, 1)),
                            child: Text(
                              "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //section-3
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
