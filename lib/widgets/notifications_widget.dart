import 'package:bkash/models/notifications.dart';
import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppNotification> list = [
      AppNotification(nId: 0, nTitle: "Super Offer on Add Money", nImage: "assets/cashback_offer.jpg", nBody: "Get instant 30 Tk cashback on Add money from Card to bKash!", nTime: "9:58 AM 8/1/2022"),
      AppNotification(nId: 0, nTitle: "Time tor Top-up", nImage: "assets/recharge_offer.png", nBody: "Get 16 Tk cashback on performing 11 Tk Top-up from app. Only once!", nTime: "9:58 AM 8/1/2022")
    ];
    return Scaffold(
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: list.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = list[index];

          return Container(margin: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(item.nImage, height: 180, width: double.infinity, fit: BoxFit.cover,),
              Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nTitle, style: AppTheme.ntitleText, textAlign: TextAlign.start,),))],),
              Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
            ],
          ),);

          /*return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );*/
        },
      ),
    );
  }
}