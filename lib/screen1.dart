import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(3.0),
          child: Card(
            elevation: 4.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            borderOnForeground: true,
            child: Container(
              height: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(

              ),
              child: ListTile(

                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
                title: Text('Name ${index+1}'),
                subtitle: Text("Description"),
              ),
            ),
          ),
        );
      },

    );
  }
}