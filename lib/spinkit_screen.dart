import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitScreen extends StatefulWidget {
  @override
  _SpinKitScreenState createState() => _SpinKitScreenState();
}

class _SpinKitScreenState extends State<SpinKitScreen> {
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
            _showLoading(_list[index]);
          },
        );
      },
    );
  }

  _showLoading(Widget child) {
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
        return SizedBox.expand(
          // makes widget fullscreen
          child: child,
        );
      },
    );
  }

  List<Widget> _list = [
    SpinKitRotatingCircle(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitRotatingPlain(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitDoubleBounce(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitWave(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitWanderingCubes(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitFadingFour(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitFadingCube(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitPulse(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitChasingDots(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitThreeBounce(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitCircle(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitCubeGrid(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitFadingCircle(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitRotatingCircle(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitFoldingCube(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitPumpingHeart(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitDualRing(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitHourGlass(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitFadingGrid(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitRing(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitRipple(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitSpinningCircle(
      color: Colors.white,
      size: 30.0,
    ),
    SpinKitSquareCircle(
      color: Colors.white,
      size: 30.0,
    ),
  ];
}
