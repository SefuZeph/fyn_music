import 'dart:math' as math;

import 'package:flutter/material.dart';

class MusicPlayerController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.shuffle),
          Row(
            children: [
              ClipPath(
                clipper: RewindButtonClip(),
                child: Container(
                    width: 60,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                    ),
                    child: Icon(
                      Icons.fast_rewind,
                    )),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Transform.rotate(
                angle: math.pi,
                child: ClipPath(
                  clipper: RewindButtonClip(),
                  child: Container(
                      width: 60,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30))),
                      child: Icon(
                        Icons.fast_rewind,
                      )),
                ),
              ),
            ],
          ),
          Icon(Icons.replay)
        ],
      ),
    );
  }
}

class RewindButtonClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width * 0.9, size.height / 2);
    var endPoint = Offset(size.width, 0);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close(); // starts from (0,0)
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
