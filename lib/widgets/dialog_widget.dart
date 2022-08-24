import 'package:bkash/styles/AppTheme.dart';
import 'package:bkash/widgets/confirmation_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animated_button.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: InkWell(onTap: () {Navigator.pop(context);}, child: SizedBox(
                width: 34, height: 34, child: Icon(Icons.close_sharp, size: 30, color: Colors.pink,)),),
          )
        ],
      ),
      body: Column(children: [
        Expanded(child: Container(
          margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(children: [
            Row(children: [Padding(padding: EdgeInsets.fromLTRB(12,8,4,24), child: Text("Confirm to ", style: AppTheme.dialogconfirmText,),), Expanded(child: Padding(padding: EdgeInsets.fromLTRB(0,8,12,24), child: Text("Send Money", style: AppTheme.dialogconfirmTextBold,),))],),

            Padding(padding: const EdgeInsets.fromLTRB(18, 12, 12, 24), child: Row(children: [
              Image.asset("assets/user.png", height: 40, width: 40, fit: BoxFit.fitWidth,),
              const SizedBox(width: 12,),
              Expanded(child: Column(children: [
                Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("Ryan Reynolds", style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                ],),
                Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("01123456789", style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
              ],)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('Total'), SizedBox(height: 4,), Text('৳ 505.00')
              ],),)),
              Container(color: Colors.black12, width: 1, height: 50,),
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('New Balance'), SizedBox(height: 4,),  Text('৳ 6995.25')
              ],),)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('Reference'), SizedBox(height: 4,), Text('N/A')
              ],),)),
              Container(color: Colors.black12, width: 1, height: 50,),
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text(''), SizedBox(height: 4,),  Text('')
              ],),)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),

            Padding(padding: EdgeInsets.all(12.0), child: Row(children: [Image.asset("assets/priyo.jpg", height: 40, width: 40,) , Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,4), child: Text("You can send money free up to 25,000 Tk. monthly by adding Priyo number.", style: AppTheme.pinHintText,),))],),)
          ],),
        )),
        AnimatedButton(
          // onComplete: _onConfirmed(context),
          onComplete: () {
            Navigator.pop(context);
            showDialog(context: context,
                /*builder: (context) => DialogAnim()*/
                builder: (context) => const Dialog(
                  insetPadding: EdgeInsets.all(20),
                  child: ConfirmationWidget(),
                ));
          },
        )
      ],),
    );
  }

  _onConfirmed(BuildContext context) {
    showDialog(context: context,
        /*builder: (context) => DialogAnim()*/
        builder: (context) => const Dialog(
          insetPadding: EdgeInsets.all(20),
          child: ConfirmationWidget(),
        ));
  }
}