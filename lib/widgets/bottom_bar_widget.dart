import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final Function(int index) onPress;
  const BottomNavigationBarWidget({
    Key? key, required this.onPress,
  }) : super(key: key);

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
                    onPress(0);
                  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.home_filled, color: Colors.white, size: 30.0),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
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
                  onPress(1);
                  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.mail_sharp,
                        color: Colors.white60, size: 30.0),
                    Text(
                      'Inbox',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}