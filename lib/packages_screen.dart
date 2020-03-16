import 'package:flutter/material.dart';

class PackagesScreen extends StatefulWidget {
  @override
  _PackagesScreenState createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  static const TextStyle optionStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter dialog'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Repository:', style: optionStyle),
            Text('https://github.com/jargalbat/flutter_dialog', style: optionStyle),
            SizedBox(height: 20.0),
            Text('Packages:', style: optionStyle),
            Text('loading_animations: ^2.1.0', style: optionStyle),
            Text('flutter_spinkit: ^4.1.2', style: optionStyle),
            SizedBox(height: 20.0),
            Text('Source:', style: optionStyle),
            Text('https://flutterawesome.com/a-collection-of-screens-and-attractive-uis-built-with-flutter/',
                style: optionStyle),
          ],
        ),
      ),
    );
  }
}
