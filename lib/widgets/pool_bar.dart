import 'package:flutter/material.dart';
import 'package:pool_app/views/profile_view.dart';

const Color textColor = Color.fromRGBO(0, 79, 255, 1);

class PoolBar extends StatelessWidget {
  const PoolBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 7.0, // has the effect of softening the shadow
          spreadRadius: 2.0, // has the effect of extending the shadow
          offset: Offset(
            0.0, // horizontal, move right 10
            -1.0, // vertical, move down 10
          ),
        )
      ]),
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
                          child: Text("Street Name,",
                              style: TextStyle(color: textColor))),
                      // Text Address City/State
                      Padding(
                          padding: EdgeInsets.only(left: 4, top: 0),
                          child: Text("City, State",
                              style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ))),

          // User Profile
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: RawMaterialButton(
                constraints: BoxConstraints(
                    minWidth: 40, maxWidth: 40, maxHeight: 40, minHeight: 40),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        "https://api.adorable.io/avatars/30/abott@adorable.png"),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
