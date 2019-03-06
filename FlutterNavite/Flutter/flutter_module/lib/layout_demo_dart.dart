import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 300.0,
              child: Container(

                  decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(3.0),
              )),
            ),
            SizedBox(
              height: 32.0,
            ),
            SizedBox(
              width: 100,
              height: 100.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0),
                    ])),
                child:
                    Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
              ),
            ),
            Positioned(
              child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
              top:30,
              right: 20,
            ),
          ],
        ),
      ],
    );
//    return Container(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          //根据最大宽度调整宽高比
//          AspectRatio(
//            aspectRatio: 16/9,
//            child: Container(
//              color: Color.fromRGBO(3, 54, 255, 1.0),
//            ),
//          )
//        ],
//      ),
//    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
