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
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
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

              //accordion section
              Container(
                child: Column(
                  children: <Widget>[
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
