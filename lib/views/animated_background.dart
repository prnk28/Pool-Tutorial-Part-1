import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color.fromRGBO(63,21,225,1), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
                    bottomLeft:  const  Radius.circular(20.0),
                    bottomRight: const  Radius.circular(20.0)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}