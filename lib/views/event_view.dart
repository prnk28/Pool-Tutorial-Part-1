import 'package:flutter/material.dart';
import 'package:pool_app/widgets/event_header.dart';

// Colors
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);
const Color strongTextColor = Color.fromRGBO(2, 23, 87, 1);

class EventView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 110, bottom: 30),
        child: SizedBox(
            width: 160,
            height: 50,
            child: RawMaterialButton(
              child: Text("Join", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {},
              fillColor: Colors.orange,
            )),
      ),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            EventHeader(),
            Row(
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  height: 45,
                  minWidth: 207,
                  child: Icon(Icons.check, color: Colors.white),
                  onPressed: () {},
                ),
                MaterialButton(
                  color: Colors.redAccent,
                  height: 45,
                  minWidth: 207,
                  child: Icon(Icons.star, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            Column()
          ],
        ),
      ),
    );
  }
}
