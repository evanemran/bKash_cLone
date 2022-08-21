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
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(alignment:Alignment.centerLeft ,child: Column(children: [
              Text("bKash Menu", style: AppTheme.titleText, textAlign: TextAlign.start,),
              Text("Language - English", style: AppTheme.subtitleText, textAlign: TextAlign.start,)
            ],),),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.home_max_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Home', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.bar_chart, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Statements', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.warning_amber_rounded, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Limits', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.local_offer_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Coupons', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.group_add_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Refer bKash App', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.add_location_alt_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('bKash Map', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.compass_calibration_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Discover bKash', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.settings, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Settings', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.support_agent_outlined, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
              title: Text('Support', style: AppTheme.subtitleText,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ))],),
          ),
          Container(
            color: Colors.white,
            child: Row(children: [const SizedBox(width: 8), const Icon(Icons.logout, color: Colors.pink, size: 32.0,), Expanded(child: ListTile(
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