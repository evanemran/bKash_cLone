import 'package:bkash/widgets/notifications_widget.dart';
import 'package:bkash/widgets/transactions_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inbox", textAlign: TextAlign.center,),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Notifications",),
              Tab(text: "Transactions",),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationWidget(),
            TransactionWidget(),
          ],
        ),
      ),
    );
  }
}