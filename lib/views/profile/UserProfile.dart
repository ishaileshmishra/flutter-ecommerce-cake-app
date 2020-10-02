import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/profile/Component.dart';
import 'package:cake_corner/views/profile/ProfileModel.dart';
import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.grey.shade300,
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSpacer(),
              Container(
                padding: EdgeInsets.all(10),
                child: buildActionbar(
                  context,
                  "Profile",
                  "User Profile",
                ),
              ),
              _buildSpacer(),
              _buildClipOval(),
              SizedBox(height: 20),
              Text(
                "Mr Flutter ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "A flutter developer",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: double.minPositive,
                  width: double.infinity,
                  child: Container(
                    //padding: EdgeInsets.all(8),
                    child: ListView.builder(
                        itemCount: getUserOptions().length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: getUserOptions()[index].icon,
                            onTap: () => showSnackBar(
                                context, getUserOptions()[index].title),
                            title: Text(
                              getUserOptions()[index].title,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildSpacer() => SizedBox(height: 20);

  ClipOval _buildClipOval() {
    return ClipOval(
      child: Image.network(
        "https://pbs.twimg.com/profile_images/1240559121012625408/D2qvaJoR_400x400.jpg",
        height: 150.0,
        width: 150.0,
      ),
    );
  }
}
