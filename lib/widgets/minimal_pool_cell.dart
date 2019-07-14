import 'package:flutter/material.dart';

// Constant Variables
const double kCellWidth = 440;
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

// Build Cell
class MinimalPoolTableCell extends StatelessWidget {

  const MinimalPoolTableCell({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Container(
                      width: kCellWidth,
                      height: 180,
                      child: Stack(
                        children: <Widget>[
                          // Background Image
                          ClipRRect(
                              borderRadius: new BorderRadius.circular(12),
                              child: Image(
                                  image: AssetImage("assets/bar.jpg"),
                                  width: kCellWidth,
                                  height: 180,
                                  fit: BoxFit.fill)),
                          // Text
                          Padding(
                            padding: EdgeInsets.only(top: 140, left: 15),
                            child: Text(
                              "Bar Crawl",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  Shadow(
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 8.0,
                                    color: Color.fromARGB(125, 0, 0, 255),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Stack(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top: 10, left: 5),
                                  child: Image(
                                    width: 70,
                                    height: 70,
                                    image:
                                        AssetImage('assets/pillBackground.png'),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 52),
                                  child: Text("JUN",
                                      style: TextStyle(
                                          color: subTextColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18))),
                              Padding(
                                  padding: EdgeInsets.only(left: 30, top: 12),
                                  child: Text("2",
                                      style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28))),
                            ]),
                          ),
                        ],
                      )))),
          Container(
            height: 10,
          )
        ],
      ),
    );
  }
}
