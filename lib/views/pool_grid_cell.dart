import 'package:flutter/material.dart';

// Constant Variables
const double kCellWidth = 210;
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

// Build Cell
class PoolGridCell extends StatelessWidget {

  const PoolGridCell({Key key}) : super(key: key);
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
                      height: 125,
                      child: Stack(
                        children: <Widget>[
                          // Background Image
                          ClipRRect(
                              borderRadius: new BorderRadius.circular(12),
                              child: Image(
                                  image: AssetImage("assets/hackathon.jpg"),
                                  width: kCellWidth,
                                  height: 125,
                                  fit: BoxFit.fill)),
                                  // Event Title
                          Padding(
                            padding: EdgeInsets.only(top: 40, left: 35),
                            child: Text(
                              "6/2/19",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
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
                          // Event Title
                          Padding(
                            padding: EdgeInsets.only(top: 75, left: 10),
                            child: Text(
                              "Sprint Session",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
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
