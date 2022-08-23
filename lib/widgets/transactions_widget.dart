import 'package:bkash/models/notifications.dart';
import 'package:bkash/models/transaction.dart';
import 'package:bkash/styles/AppTheme.dart';
import 'package:bkash/utils/TextUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AppTransaction> list = [
      AppTransaction(tId: "9HEFG65JH", tImage: "assets/profile.png", tType: "Send money", tBeneficiary: "Salman", tAmt: "-500", tTime: "7:20 AM 22/08/2022", tCode: 2),
      AppTransaction(tId: "7HBFHHSJS", tImage: "assets/daraz.jpg", tType: "Payment", tBeneficiary: "Daraz", tAmt: "-2150", tTime: "12:38 PM 21/08/2022", tCode: 2),
      AppTransaction(tId: "X7GDHSMNK", tImage: "assets/add_money.jpg", tType: "Cash in", tBeneficiary: "RK Telecom", tAmt: "+500", tTime: "8:17 AM 21/08/2022", tCode: 1),
      AppTransaction(tId: "QWEJCNDJM", tImage: "assets/airtel.jpg", tType: "Postpaid Bill", tBeneficiary: "Airtel Biller", tAmt: "-715", tTime: "11:22 PM 19/08/2022", tCode: 2),
      AppTransaction(tId: "9JGHBNBDC", tImage: "assets/cash_out.jpg", tType: "Received Money", tBeneficiary: "Imtiaz", tAmt: "+2000", tTime: "9:20 AM 18/08/2022", tCode: 1),
      AppTransaction(tId: "DABDHBHDD", tImage: "assets/card_bill.jpg", tType: "Card Bill", tBeneficiary: "EVAN", tAmt: "-25980", tTime: "1:20 AM 17/08/2022", tCode: 2),
      AppTransaction(tId: "EVANMJJDJ", tImage: "assets/mobile_recharge.jpg", tType: "Top-up", tBeneficiary: "0187*******", tAmt: "-200", tTime: "7:20 AM 22/08/2022", tCode: 2),
      AppTransaction(tId: "UBDBHSJSC", tImage: "assets/profile.png", tType: "Send money", tBeneficiary: "Salman", tAmt: "-500", tTime: "7:20 AM 22/08/2022", tCode: 2),
      AppTransaction(tId: "KITHBDBDF", tImage: "assets/profile.png", tType: "Send money", tBeneficiary: "Salman", tAmt: "-500", tTime: "7:20 AM 22/08/2022", tCode: 2),
      AppTransaction(tId: "IRO56MAND", tImage: "assets/profile.png", tType: "Send money", tBeneficiary: "Salman", tAmt: "-500", tTime: "7:20 AM 22/08/2022", tCode: 2),
    ];
    return Scaffold(
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: list.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = list[index];

          return Card(margin: const EdgeInsets.fromLTRB(12.0, 6, 12.0, 6), elevation: 4.0, color: Colors.white, child: Container(margin: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [
                  Image.asset(item.tImage, height: 60, width: 60, fit: BoxFit.fitWidth,),
                  const SizedBox(width: 12,),
                  Expanded(child: Column(children: [
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.tType, style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                      Text(item.tTime, style: AppTheme.tTimeText, textAlign: TextAlign.start,)],),
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.tBeneficiary, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("TrX ID: ${item.tId}", style: AppTheme.tTrxText, textAlign: TextAlign.start,),)),
                      Text(item.tAmt, style: getAmtStyle(item.tCode), textAlign: TextAlign.start,)],),
                  ],)),
                ],)

                ,
                //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
              ],
            ),),);

          /*return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );*/
        },
      ),
    );
  }
}