import 'package:bkash/enums/home_menu.dart';
import 'package:bkash/models/contact.dart';
import 'package:bkash/models/notifications.dart';
import 'package:bkash/models/transaction.dart';
import 'package:bkash/pages/amount_page.dart';
import 'package:bkash/styles/AppTheme.dart';
import 'package:bkash/utils/TextUtils.dart';
import 'package:bkash/widgets/send_money_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    Key? key, required this.list, required this.title
  }) : super(key: key);

  final List<AppContact> list;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Card(color: Colors.white, elevation: 4, margin: EdgeInsets.all(12), child: Column(children: [
        Expanded(child: ListView.builder(
          shrinkWrap: true,
          // Let the ListView know how many items it needs to build.
          itemCount: list.length,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = list[index];

            if(index == 0){
              return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("My account", style: AppTheme.ntitleText,),))],);
            }
            else if(index == 2){
              return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("Recents", style: AppTheme.ntitleText,),))],);
            }
            else if(index == 5){
              return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("All contacts", style: AppTheme.ntitleText,),))],);
            }
            else {
              return InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AmountPage(menu: HomeMenu.SEND_MONEY,)),
                );
              },
                child: Container(margin: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      Image.asset(item.cImage, height: 50, width: 50, fit: BoxFit.fitWidth,),
                      const SizedBox(width: 12,),
                      Expanded(child: Column(children: [
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.cName, style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                        ],),
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.cNumber, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
                      ],)),
                    ],)

                    ,
                    //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                  ],
                ),),);
            }

            /*return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );*/
          },
        ))
      ],),),
    );
  }
}