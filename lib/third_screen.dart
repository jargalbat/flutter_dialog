import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
          child: Container(height: 30.0, width: 30.0, child: child),
        );
      },
    );
  }

  List<Widget> _list = [
    LoadingFlipping.circle(
      borderColor: Colors.cyan,
      borderSize: 3.0,
      size: 30.0,
      backgroundColor: Colors.cyanAccent,
      duration: Duration(milliseconds: 1500),
    ),
    LoadingFlipping.square(
      borderColor: Colors.cyan,
      size: 30.0,
    ),
    LoadingRotating.square(size: 30.0),
    LoadingDoubleFlipping.circle(size: 30.0),
    LoadingDoubleFlipping.square(size: 30.0),
    LoadingBouncingGrid.circle(size: 30.0),
    LoadingBouncingGrid.square(size: 30.0),
    LoadingFilling.square(size: 30.0),
    LoadingFadingLine.circle(size: 30.0),
    LoadingFadingLine.square(size: 30.0),
    LoadingBouncingLine.circle(size: 30.0),
    LoadingBouncingLine.square(size: 30.0),
    LoadingJumpingLine.circle(size: 30.0),
    LoadingJumpingLine.square(size: 30.0),
    LoadingBumpingLine.circle(size: 30.0),
    LoadingBumpingLine.square(size: 30.0),
  ];
}
