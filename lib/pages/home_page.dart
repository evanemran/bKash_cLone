import 'package:bkash/pages/inbox_page.dart';
import 'package:bkash/widgets/drawer_widget.dart';
import 'package:bkash/widgets/home_body_widget.dart';
import 'package:bkash/widgets/notifications_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  static const List<Widget> _bottomMenu = <Widget>[
    HomeBodyWidget(),
    InboxPage(title: "Inbox",),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(),
      ),*/
      body: _bottomMenu.elementAt(_selectedIndex),
      endDrawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Scan QR',
        elevation: 2.0,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.qr_code, color: Colors.pink, size: 40.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(onPress: _onItemTapped,),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}