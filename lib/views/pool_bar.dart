import 'package:flutter/material.dart';

const Color textColor = Color.fromRGBO(0, 79, 255, 1);

class PoolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      child: Row(
        children: <Widget>[
          // Address Portion
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(219, 232, 255, 1)),
                width: 310,
                height: 40,
                child: Row(
                  children: <Widget>[
                // Location Icon
                 Padding(
                    padding: EdgeInsets.only(left: 10, top: 0),
                    child: Icon(Icons.location_on, color: textColor)),
                // Text Address Street/House
                 Padding(
                    padding: EdgeInsets.only(left: 4, top: 0),
                    child: Text("22991 Weybridge Square,",
                        style: TextStyle(
                            color: textColor))),
                // Text Address City/State
                 Padding(
                    padding: EdgeInsets.only(left: 4, top: 0),
                    child: Text("Ashburn, VA",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.bold))),
                  ],
                )
              )),

          // User Profile
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: NetworkImage("https://api.adorable.io/avatars/40/abott@adorable.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
