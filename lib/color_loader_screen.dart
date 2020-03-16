import 'package:flutter/material.dart';
import 'package:flutter_dialog/loaders/color_loader.dart';
import 'package:flutter_dialog/loaders/color_loader_2.dart';
import 'package:flutter_dialog/loaders/color_loader_3.dart';
import 'package:flutter_dialog/loaders/color_loader_4.dart';
import 'package:flutter_dialog/loaders/color_loader_5.dart';
import 'package:flutter_dialog/loaders/dot_type.dart';
import 'package:flutter_dialog/loaders/flip_loader.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ColorLoaderScreen extends StatefulWidget {
  @override
  _ColorLoaderScreenState createState() => _ColorLoaderScreenState();
}

class _ColorLoaderScreenState extends State<ColorLoaderScreen> {
  static const double _loaderSize = 30.0;
  static const double _loaderSize2 = 54.0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      padding: EdgeInsets.all(10.0),
      itemCount: _list.length,
      itemBuilder: (_, index) {
        return RaisedButton(
          child: _list[index],
          onPressed: () {
            _showLoading(child: _list[index]);
          },
        );
      },
    );
  }

  _showLoading({@required Widget child}) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.6),
      // background color
      barrierDismissible: true,
      // should dialog be dismissed when tapped outside
      barrierLabel: "Dialog",
      // label for barrier
      transitionDuration: Duration(milliseconds: 400),
      // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // your widget implementation
        return Center(
          // makes widget fullscreen
          child: child,
        );
      },
    );
  }

  List<Widget> _list = [
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: ColorLoader(
        colors: [Colors.blue],
        duration: Duration(milliseconds: 1200),
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: ColorLoader(
        colors: [Colors.red, Colors.green, Colors.indigo, Colors.pinkAccent, Colors.blue],
        duration: Duration(milliseconds: 1200),
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: FlipLoader(
        loaderBackground: Colors.red,
        iconColor: Colors.white,
        icon: Icons.email,
        animationType: "full_flip",
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: FlipLoader(
        loaderBackground: Colors.blueAccent,
        iconColor: Colors.orangeAccent,
        icon: Icons.subway,
        animationType: "half_flip",
        rotateIcon: true,
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: FlipLoader(
        loaderBackground: Colors.green,
        iconColor: Colors.white,
        icon: Icons.wifi,
        animationType: "half_flip",
        shape: "circle",
        rotateIcon: false,
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: ColorLoader2(
        color1: Colors.redAccent,
        color2: Colors.deepPurple,
        color3: Colors.green,
      ),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: ColorLoader3(radius: 15.0, dotRadius: 6.0),
    ),
    Container(
      height: _loaderSize,
      width: _loaderSize,
      child: ColorLoader3(radius: 20.0, dotRadius: 5.0),
    ),
    Container(
      height: _loaderSize2,
      width: _loaderSize2,
      child: ColorLoader4(
        dotOneColor: Colors.pink,
        dotTwoColor: Colors.amber,
        dotThreeColor: Colors.deepOrange,
        dotType: DotType.square,
        duration: Duration(milliseconds: 1200),
      ),
    ),
    Container(
      height: _loaderSize2,
      width: _loaderSize2,
      child: ColorLoader4(
        dotOneColor: Colors.pink,
        dotTwoColor: Colors.amber,
        dotThreeColor: Colors.deepOrange,
        dotType: DotType.circle,
        duration: Duration(milliseconds: 1200),
      ),
    ),
    Container(
      height: _loaderSize2,
      width: _loaderSize2,
      child: ColorLoader5(
        dotOneColor: Colors.redAccent,
        dotTwoColor: Colors.blueAccent,
        dotThreeColor: Colors.green,
        dotType: DotType.circle,
        duration: Duration(milliseconds: 1200),
      ),
    ),
  ];
}
