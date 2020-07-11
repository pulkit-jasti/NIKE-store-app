import 'dart:ffi';

import 'package:flutter/material.dart';

class productCard extends StatelessWidget {
  double marginLeft, marginRight;
  String index, path, shoeName, cost;
  Color gradientStart, gradientEnd;

  productCard({
    this.index = '01',
    this.path = 'assets/images/blue.png',
    this.shoeName = 'Nike Air Max 90',
    this.cost = '\$ 130',
    this.marginLeft = 50,
    this.marginRight = 0,
    this.gradientStart,
    this.gradientEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      width: 250,
      height: 380,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //Color.fromRGBO(1, 54, 175, 1),
            //Color.fromRGBO(56, 182, 255, 1),
            gradientStart,
            gradientEnd,
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
              index,
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Nike',
                fontWeight: FontWeight.w900,
                color: Color.fromRGBO(255, 255, 255, .5),
              ),
            ),
          ),
          Positioned(
            right: -30,
            top: 10,
            child: Transform.rotate(
              angle: -0.4,
              child: Image.asset(
                path,
                width: 280,
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    shoeName,
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
                    cost,
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
              padding: EdgeInsets.fromLTRB(50, 17, 50, 13),
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
    );
  }
}
