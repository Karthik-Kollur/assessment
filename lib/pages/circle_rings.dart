import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnectedCircles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Circle(color: Colors.cyanAccent),
            ),
            Positioned(
              left: 25,
              child: Circle(color: Colors.cyanAccent),
            ),
            Positioned(
              left: 50,
              child: Circle(color: Colors.cyanAccent),
            ),
            Positioned(
              left: 75,
              child: Circle(color: Colors.cyanAccent),
            ),
            Positioned(
              left: 150,
              child: Container(
                height: 40,
                width: 100,
                child: Center(
                  child: Text("1/15 members"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final Color color;

  Circle({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
