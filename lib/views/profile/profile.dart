import 'package:cake_corner/views/home/home.component.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 40),
              buildPageActionbar(context, widget.title),
              SizedBox(height: 20),
              Text("No Profile Found")
            ],
          ),
        ),
      ),
    );
  }
}
