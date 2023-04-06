import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TurkBayragi(g: 200),
    );
  }
}

class TurkBayragi extends StatelessWidget {
  double g;

  TurkBayragi({required this.g});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(child: kirmiziKutu, bottom: -30, right: -30),

            Positioned(
              top: 0.25 * g,
              left: 0.34 * g,
              child: Container(
                width: 0.5 * g,
                height: 0.5 * g,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 0.3 * g,
              left: 0.45 * g,
              child: Container(
                width: 0.4 * g,
                height: 0.4 * g,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),

            // Positioned(
            //   child: yildiz,
            //    left: 140,
            //   top: 77,
            // ),
            Positioned(
              left: 150,
              top: 77,
              child: RotatedBox(
                quarterTurns: -1,
                child: yildiz,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget kirmiziKutu = Container(
  height: 300,
  width: 300,
  color: Colors.red,
);

Widget yildiz = Icon(
  Icons.star,
  size: 50,
  color: Colors.white,
);
