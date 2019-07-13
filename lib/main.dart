import 'package:flutter/material.dart';
import 'package:pool_app/views/pool_header.dart';
import 'package:pool_app/views/pool_table_cell.dart';

void main() => runApp(MyApp());

const Color strongTextColor = Color.fromRGBO(2, 23, 87, 1);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Header Search Widget
          PoolHeader(),

          // Featured Events
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: 380,
              child: Text("Featured Events", style: TextStyle(
                fontWeight: FontWeight.w600,
                color: strongTextColor,
                fontSize: 20
              )),
            ),
          ),

          // Table View
          Expanded(
              child: SizedBox(
                  height: 200.0,
                  child: ListView(
                    padding: const EdgeInsets.all(8.0),
                    children: <Widget>[
                      PoolTableCell(),
                      PoolTableCell(),
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
