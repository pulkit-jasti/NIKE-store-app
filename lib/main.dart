import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Pulkit is awesome'),
        ),*/
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(30, 50, 0, 40),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  'The Orignal. \nMade your way.',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
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
                    height: 1.5,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .5,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 40, left: 30),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Text(
                  '+   Show More'.toUpperCase(),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              //image container
              Container(
                width: double.infinity,
                //height: 400,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Image(
                  image: AssetImage('assets/images/nike-shoe-img.png'),
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
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Get gone in football's fastest cheat  | \nThe Nike Vapour Untouchable",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(255, 255, 255, .5),
                            letterSpacing: 1),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        '+ show more'.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(255, 255, 255, 1)),
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
