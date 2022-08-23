import 'package:bkash/models/contact.dart';
import 'package:bkash/widgets/contacts_widget.dart';
import 'package:bkash/widgets/send_money_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class SendMoneyWidget extends StatefulWidget {
  const SendMoneyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SendMoneyWidgetState();
}

class _SendMoneyWidgetState extends State<SendMoneyWidget> {

  final List<AppContact> myNumberlist = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01873365544", cName: "Evan Emran"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01873365544", cName: "Evan Emran"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Ryan Reynolds"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Ryan Reynolds"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01523456789", cName: "Narendra Modi"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01966317117", cName: "Atmaram"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01966317117", cName: "Atmaram"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),
  ];

  final List<AppContact> recentList = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Ryan Reynolds"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01523456789", cName: "Narendra Modi"),

  ];

  final List<AppContact> allContacts = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01966317117", cName: "Atmaram"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01612374023", cName: "Abuklau"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Expanded(child: ContactsWidget(list: myNumberlist, title: "My account"))
        ],
      ),),
    );
  }

}