import 'package:DemoFlutter/Gallery.dart';
import 'package:flutter/material.dart';

import 'GalleryInfo.dart';
import 'Jeux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.white])
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("Images/profil.png"),
                  radius: 80,
                ),
              ),
            ),
            ListTile(title: Text("Gallery"),
              leading: Icon(Icons.image, color: Colors.black,),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new Gallery(),));
              },
            ),
            Divider(color: Colors.grey,),
            ListTile(title: Text("Jeux"),
              leading: Icon(Icons.my_location, color: Colors.black,),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) =>
                new Jeux()
                ,));
              },
            ),
            Divider(color: Colors.grey,),
            ListTile(title: Text("Anime"),
              leading: Icon(Icons.accessibility_new, color: Colors.black,),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(color: Colors.grey,),
            ListTile(title: Text("Films"),
              leading: Icon(Icons.video_call, color: Colors.black,),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(color: Colors.grey,),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("AppBar Scaffold"),
      ),
      body: Center(
        child: Text("Body Scaffold"),
      ),
    );
  }
}



