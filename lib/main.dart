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
                        style:
                            TextStyle(color: Color.fromRGBO(255, 255, 255, .5)),
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
                    Container()
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
