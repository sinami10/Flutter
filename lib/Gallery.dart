import 'package:DemoFlutter/GalleryInfo.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  String keyword = "";
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          keyword,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontStyle: FontStyle.normal),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) {
                this.keyword = value;
                //print(keyword);
              },
              controller: controller,
              decoration: InputDecoration(hintText: "Tape a Place"),
              onSubmitted: (value){
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 6, left: 6),
            width: double.infinity,
            child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Get Images",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new GalleryInfo(keyword),));
                }),
          )
        ],
      ),
    );
  }
}
