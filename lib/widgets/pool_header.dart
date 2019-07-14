import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pool_app/components/animated_background.dart';
import 'package:pool_app/components/animated_wave.dart';

class PoolHeader extends StatelessWidget {
  onBottom(Widget child) => Positioned.fill(
        child: Align(
          widthFactor: 400,
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(20.0),
              bottomRight: const Radius.circular(20.0))),
      width: 445,
      height: 410,
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: AnimatedBackground()),
          onBottom(AnimatedWave(
            height: 180,
            speed: 1.0,
          )),
          onBottom(AnimatedWave(
            height: 120,
            speed: 0.9,
            offset: pi,
          )),
          // Banner Text
          Padding(
            padding: EdgeInsets.only(left: 35, top: 100),
            child: Container(
              width: 350,
              height: 300,
              child: Text(
                "Find amazing events happening around you.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Sub description text
          Padding(
            padding: EdgeInsets.only(left: 40, top: 245),
            child: Text(
              "1,711 Events in your area",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),
          // Search Bar
          Padding(
            padding: EdgeInsets.only(left: 40, top: 270),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 21, 146, 1),
                borderRadius: BorderRadius.circular(32.5),
              ),
              width: 320,
              height: 65,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 30),
                    child: Text("Search for an event...",
                        style: TextStyle(fontSize: 18, color: Colors.white60)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 260, top: 8),
                      child: RawMaterialButton(
                        constraints: BoxConstraints.tight(Size(42, 42)),
                        onPressed: null,
                        child: Icon(Icons.search, size: 21),
                        shape: new CircleBorder(),
                        elevation: 0.0,
                        fillColor: Color.fromARGB(255, 240, 240, 240),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 175, top: 345),
            child: Container(
              child: FloatingActionButton(
                child: Icon(Icons.dashboard),
                backgroundColor: Colors.redAccent,
                onPressed: () => {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
