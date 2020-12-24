import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GalleryInfo extends StatefulWidget {
  String keyword;

  GalleryInfo(this.keyword);

  @override
  _GalleryInfoState createState() => _GalleryInfoState();
}

class _GalleryInfoState extends State<GalleryInfo> {
  var galleryData;
  List<dynamic> hits = [];

  @override
  void initState() {
    getData();
  }

  getData() {
    String url =
        "https://pixabay.com/api/?key=17324260-68d19324837365fea6249fee6&q=${widget.keyword}&per_page=100";
    http.get(url).then((resp) {
      this.setState(() {
        galleryData = json.decode(resp.body);
        hits.addAll(galleryData["hits"]);
        print(hits);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.keyword}"),
      ),
      body: ListView.builder(
        itemCount: hits.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      hits[index]["tags"],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 2),
                child: Card(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(hits[index]["webformatURL"],
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
