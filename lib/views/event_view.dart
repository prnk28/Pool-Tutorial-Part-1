import 'package:flutter/material.dart';
import 'package:pool_app/widgets/minimal_pool_cell.dart';



// Colors
const Color textColor = Color.fromRGBO(0, 79, 255, 1);
const Color subTextColor = Color.fromRGBO(62, 134, 255, 1);
const Color detailTextColor = Color.fromRGBO(0, 2, 89, 1);
const Color neutralTextColor = Color.fromRGBO(123, 133, 169, 1);
const Color strongTextColor = Color.fromRGBO(2, 23, 87, 1);

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: Text("Profile"),
      ),
        body: Container(
        height: 650,
        // decoration: BoxDecoration(
        //   borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        // ),
        child: Column(
          children: <Widget>[
            // Top Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: ClipRRect(
                      child: Image(
                        image: NetworkImage(
                            "https://api.adorable.io/avatars/90/abott@adorable.png"),
                      ),
                      borderRadius: BorderRadius.circular(45),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Column(
                    children: <Widget>[
                      Text("Pradyumn Nukala",
                          style: TextStyle(
                              fontSize: 20,
                              color: textColor,
                              fontWeight: FontWeight.w600)),
                      Text("Ashburn, VA",
                          style: TextStyle(
                              color: neutralTextColor,
                              fontWeight: FontWeight.w300))
                    ],
                  ),
                ),
              ],
            ),
            // Title for Upcoming
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Container(
                width: 380,
                child: Text("Upcoming Events",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: strongTextColor,
                        fontSize: 20)),
              ),
            ),
            // Upcoming List
            SizedBox(
                height: 225.0,
                width: 350,
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: <Widget>[
                    MinimalPoolTableCell(),
                    MinimalPoolTableCell(),
                  ],
                )),
            // Title for Past
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Container(
                width: 380,
                child: Text("Past Events",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: strongTextColor,
                        fontSize: 20)),
              ),
            ),
            // // Past Grid
            // SizedBox(
            //     height: 225.0,
            //     width: 350,
            //     child: GridView.count(
            //       // Create a grid with 2 columns. If you change the scrollDirection to
            //       // horizontal, this produces 2 rows.
            //       crossAxisCount: 2,
            //       // Generate 100 widgets that display their index in the List.
            //       children:  <Widget>[
            //         PoolGridCell(),
            //         PoolGridCell(),
            //         PoolGridCell(),
            //       ],
            //     )),
          ],
        ),
      ),
    );
    }
  }