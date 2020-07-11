import 'package:flutter/material.dart';

class accordion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(color: Color.fromRGBO(246, 244, 247, 1)),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}