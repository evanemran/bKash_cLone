import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final Function(int index) onPress;
  const BottomNavigationBarWidget({
    Key? key, required this.onPress,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  Color homeColor = Colors.white;
  Color inboxColor = Colors.white60;

  int selectedIndex = 0;

  void _onBottomBarTapped(int index) {
    setState(() {
      selectedIndex = index;

      if(selectedIndex == 0){
        homeColor = Colors.white;
        inboxColor = Colors.white60;
      }
      else{
        homeColor = Colors.white60;
        inboxColor = Colors.white;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.pink,
      notchMargin: 6.0,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                // minWidth: 40,
                onPressed: () {
                  widget.onPress(0);
                  _onBottomBarTapped(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home_filled, color: homeColor, size: 30.0),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: homeColor,
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'Scan QR',
                  style: TextStyle(color: Colors.white60),
                ),
              ),
              MaterialButton(
                // minWidth: 40,
                onPressed:  () {
                  widget.onPress(1);
                  _onBottomBarTapped(1);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.mail_sharp,
                        color: inboxColor, size: 30.0),
                    Text(
                      'Inbox',
                      style: TextStyle(color: inboxColor),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

}