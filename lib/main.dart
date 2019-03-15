import 'package:flutter/material.dart';
import './screen1.dart';
import './screen2.dart';
import './screen3.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData (
      fontFamily: 'Product Sans',
      //brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      accentColor: Colors.lightBlueAccent
  ),
  home: new MainPage(),
  routes: <String, WidgetBuilder>{
  },
));

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final List<Widget> wigs = [Screen1(),Screen2(),Screen3() ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecureIT'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
            backgroundImage:
            AssetImage("assets/userimg.jpg")),
              accountName: Text('Tarushi Sharma'),
              accountEmail: Text('tarushisahrmaace@gmail.com'),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.repeated,
                    colors: [
                      Color(0xFF48c6ef), //#48c6ef  #66a6ff
                      Color(0xFF66a6ff)
                    ]),
              ), // ),
            ),
            ListTile(
              leading:Icon(Icons.settings),
              title: Text('Settings'),
              onTap:(){},
            ),
            ListTile(
              leading:Icon(Icons.bug_report),
              title: Text('Report a problem'),
              onTap:(){},
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.power_settings_new),
              title: Text('Logout'),
              onTap:(){},
            ),
          ],
        ),

      ),
      body: wigs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap:ontapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text('Users')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), title: Text('Add User')),
          BottomNavigationBarItem(icon: Icon(Icons.linked_camera), title: Text('Surveillance')),
        ],
      ),
    );
  }
  void ontapped(int index) {
    setState(() {
      _index = index;
    });
  }
}

