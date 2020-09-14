import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/home/home.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      floatingActionButton: FloatingActionButton(
        onPressed: () => modalBottomSheetMenu(context),
        tooltip: 'Increment',
        child: Icon(Icons.filter_list),
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              //Cake And Filter Row Place Of The Actionbar
              buildPageActionbar(context, "Hello", "Shailesh!",
                  "https://pbs.twimg.com/profile_images/1240559121012625408/D2qvaJoR_400x400.jpg"),
              //Provide vertical Space
              SizedBox(height: 20),

              //Horizontal listview for categories
              Container(
                height: 40,
                child: new ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CakeService().cakeCategories.length,
                  itemBuilder: (context, index) {
                    return buildCakeCategory(index);
                  },
                ),
              ),

              SizedBox(height: 20),
              //Create ListView/GridView For The Cakes
              //That contains all the available spaces
              Expanded(
                  child: buildGridView(
                      orientation, CakeService().getAvailCakes())),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
