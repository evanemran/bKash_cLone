import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("bKash Menu", style: AppTheme.titleText, textAlign: TextAlign.start,),
              const SizedBox(height: 8,),
              Text("Language - English", style: AppTheme.subtitleText, textAlign: TextAlign.start,)
            ],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/home.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Home', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/statement.png", height: 24,),), Expanded(child: ListTile(
              title: Text('Statements', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/alert_icon.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Limits', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/ticket.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Coupons', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/friends.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Refer bKash App', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/location.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('bKash Map', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/discover.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Discover bKash', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/ic_settings.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Settings', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/support.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Support', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(height: 1, color: Colors.black12,),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), Tab(icon: Image.asset("assets/log_out.png", color: Colors.pink, height: 24,),), Expanded(child: ListTile(
              title: Text('Log-out', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),

        ],
      ),
    );
  }
}