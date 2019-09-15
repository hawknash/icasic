// Flutter code sample for

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 



  

  @override
  Widget build(BuildContext context) {


   



    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Title'),
        backgroundColor: Colors.purple,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Sessions'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text('Speakers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Partners'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        onTap: _onItemTapped,
      ),
      drawer:
    
      Drawer(
        
        child: Column(
          children: <Widget>[


           new UserAccountsDrawerHeader(
             decoration: BoxDecoration(color: Colors.purple
             ),
                accountName: new Text(
                  "Yuvraj Pandey",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: new Text(
                  "yuvrajn.pandey@gmail.com",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                )),

                ListTile(
                  leading: new Icon(Icons.book),
              title: Text('Exhibitors'),
              onTap: () {
                
              },
                ),
             ListTile(
                  leading: new Icon(Icons.chevron_right),
              title: Text('Directory'),
              onTap: () {
                
              },),

               ListTile(
                  leading: new Icon(Icons.warning),
              title: Text('FAQ'),
              onTap: () {
                
              },),

               ListTile(
                  leading: new Icon(Icons.public),
              title: Text('Social Media'),
              onTap: () {
                
              },),

            
          ],
        ),
      ),
    );
  }
}