import 'package:flutter/material.dart';

class GitHubScreen extends StatefulWidget {
  @override
  _GitHubScreenState createState() => _GitHubScreenState();
}

class _GitHubScreenState extends State<GitHubScreen> {
  static const TextStyle optionStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Repository:', style: optionStyle),
          Text('https://github.com/jargalbat/flutter_dialog', style: optionStyle),
          SizedBox(height: 20.0),
          Text('Packages:', style: optionStyle),
          Text('flutter_spinkit: ^4.1.2', style: optionStyle),
        ],
      ),
    );
  }
}
