import 'package:flutter/material.dart';
import 'package:pool_app/views/event_view.dart';

// Constant Variables
const double kCellWidth = 440;
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);

// Build Cell
class PoolTableCell extends StatelessWidget {
  final bool useBottomBar;

  const PoolTableCell({Key key, this.useBottomBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EventView()),
          );
        },
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                          width: kCellWidth,
                          height: 250,
                          child: Stack(
                            children: <Widget>[
                              // Background Image
                              ClipRRect(
                                  borderRadius: new BorderRadius.circular(12),
                                  child: Image(
                                      image: AssetImage("assets/marathon.jpg"),
                                      width: kCellWidth,
                                      height: 250,
                                      fit: BoxFit.fill)),
                              // Text
                              Padding(
                                padding: EdgeInsets.only(top: 200, left: 15),
                                child: Text(
                                  "Late Spring Marathon",
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
                              Padding(
                                padding: EdgeInsets.only(left: 325, top: 10),
                                child: RawMaterialButton(
                                  child: Image(
                                    width: 35,
                                    height: 48,
                                    image: AssetImage("assets/bookmark.png"),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: Stack(children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 5),
                                      child: Image(
                                        width: 70,
                                        height: 70,
                                        image: AssetImage(
                                            'assets/pillBackground.png'),
                                      )),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, top: 52),
                                      child: Text("JUN",
                                          style: TextStyle(
                                              color: subTextColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18))),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, top: 12),
                                      child: Text("2",
                                          style: TextStyle(
                                              color: textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28))),
                                ]),
                              ),
                            ],
                          )))),
              Padding(
                padding: EdgeInsets.only(top: 12, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Distance Information
                    Container(
                      child: Row(
                        children: <Widget>[
                          // GPS Icon
                          Image(
                            width: 20,
                            height: 20,
                            image: AssetImage("assets/gps.png"),
                          ),
                          // Text Distance
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("5M ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: detailTextColor)),
                          ),
                          // Supporting Text
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Text("away",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: detailTextColor)),
                          )
                        ],
                      ),
                    ),
                    // Social Information
                    Container(
                      child: Row(
                        children: <Widget>[
                          // Friend 1
                          Padding(
                            padding: EdgeInsets.only(),
                            child: ClipRRect(
                                borderRadius: new BorderRadius.circular(18),
                                child: Image(
                                    image: NetworkImage(
                                        "https://ui-avatars.com/api/?size=36"))),
                          ),
                          // Friend 2
                          Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: ClipRRect(
                                borderRadius: new BorderRadius.circular(18),
                                child: Image(
                                    image: NetworkImage(
                                        "https://ui-avatars.com/api/?size=36"))),
                          ),
                          // Additional Count
                          Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(219, 232, 255, 1)),
                                width: 50,
                                height: 30,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6, top: 6),
                                    child: Text("+325",
                                        style: TextStyle(
                                            color: textColor,
                                            fontWeight: FontWeight.w600))),
                              )),
                          // Supporting Text
                          Padding(
                              padding: EdgeInsets.only(left: 3, right: 7),
                              child: Text("are interested",
                                  style: TextStyle(color: neutralTextColor)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 25,
              )
            ],
          ),
        ));
  }
}
