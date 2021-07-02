import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: LoLCard(),
));
class LoLCard extends StatefulWidget {
  @override
  _LoLCardState createState() => _LoLCardState();
}

class _LoLCardState extends State<LoLCard> {
  int JunglerLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Champion ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            JunglerLevel+=1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 55.0,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius:50,
               backgroundImage: AssetImage('assets/olaf.jpeg'),
              ),
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey[400],
          ),
          Text(
              'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'OLAF',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'JUNGLER LEVEL',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$JunglerLevel',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
             Icon(
               Icons.mail,
               color: Colors.grey[400],
             ),
              SizedBox(width: 8),
              Text(
                'olaf@lol.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),

        ],
      ),
      ),
    );
  }
}



