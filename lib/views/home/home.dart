import 'package:cake_corner/models/album.dart';
import 'package:cake_corner/service/cake.service.dart';
import 'package:cake_corner/views/home/Component.dart';
import 'package:cake_corner/views/home/StandardStaggeredGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Album> listOfAlbums = [];
  var isLoading = true;

  @override
  void initState() {
    super.initState();
    var fetch = fetchAlbums();
    fetch.then((response) {
      setState(() {
        listOfAlbums = response;
        isLoading = false;
      });
    }).catchError((error) {
      return Center(
        child: Text(
          error.toString(),
          style: TextStyle(
              color: Colors.red.shade300,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      );
      //print('Error $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    //final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => modalBottomSheetMenu(listOfAlbums, context),
        tooltip: 'filter',
        child: Icon(Icons.filter_list),
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //
              // building actionbar of the Home page
              buildPageActionbar(
                  context,
                  "\nHi Shailesh",
                  "What do you like to eat?",
                  "https://pbs.twimg.com/profile_images/1240559121012625408/D2qvaJoR_400x400.jpg"),
              //Provide vertical Space
              SizedBox(height: 20),

              CupertinoTextField(
                placeholder: "or, type what you're looking",
              ),

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

              Container(
                  child: isLoading
                      ? CircularProgressIndicator(
                          strokeWidth: 3,
                          backgroundColor: Colors.deepPurple,
                        )
                      : Expanded(
                          child: InstagramSearchGrid(
                            albums: listOfAlbums,
                          ),
                        )), //buildGridView(orientation, listOfAlbums)
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
