import 'package:flutter/material.dart';

class Jeux extends StatefulWidget {
  @override
  _JeuxState createState() => _JeuxState();
}

class _JeuxState extends State<Jeux> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.image),
          )
        ],
        title: Text("ibrahima jeux"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: RaisedButton(
                  child: Text("Ajouter",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),), color: Colors.blue, onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
