import 'package:cake_corner/service/cake.service.dart';
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
        backgroundColor: Colors.grey.shade100,
        appBar: _buildAppBar(),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  "https://pbs.twimg.com/profile_images/1240559121012625408/D2qvaJoR_400x400.jpg",
                  height: 150.0,
                  width: 150.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Mr Joker ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                "Begginer",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              SizedBox(height: 50),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: double.minPositive,
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: ListView.builder(
                        itemCount: CakeService().getUserOptions().length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CakeService().getUserOptions()[index].icon,
                            onTap: () => print("object"),
                            title: Text(
                              CakeService().getUserOptions()[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
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

  AppBar _buildAppBar() {
    return AppBar(
      leading: GestureDetector(
        //onTap: () => Navigator.pop(context),
        child: Icon(
          CupertinoIcons.clear,
          color: Colors.red,
          size: 40,
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      centerTitle: true,
      title: Text(
        "My Profile",
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
