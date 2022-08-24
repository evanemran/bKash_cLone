import 'package:bkash/enums/home_menu.dart';
import 'package:bkash/widgets/purpose_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';
import '../widgets/dialog_animation.dart';
import '../widgets/dialog_widget.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final referenceTextController = TextEditingController();
  final pinTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.menu.title, style: AppTheme.actionBarText, textAlign: TextAlign.center,),
          backgroundColor: Colors.pink,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                  width: 34, height: 34, child: Image.asset('assets/logo.png')),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              //TO
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,4), child: Text("To", style: AppTheme.ntitleText,),))],),
                Padding(padding: const EdgeInsets.fromLTRB(24, 12, 12, 12), child: Row(children: [
                  Image.asset("assets/user.png", height: 50, width: 50, fit: BoxFit.fitWidth,),
                  const SizedBox(width: 12,),
                  Expanded(child: Column(children: [
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("Ryan Reynolds", style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                    ],),
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("01123456789", style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
                  ],)),
                ],),)
              ],),),

              //Amount
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('Amount'), SizedBox(height: 4,), Text('৳ 500.00')
                  ],),)),
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('Charge'), SizedBox(height: 4,),  Text('+ ৳ 5.00')
                  ],),)),
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('Total'), SizedBox(height: 4,),  Text('৳ 505.00')
                  ],),))
                ],),),
                Container(width: double.infinity, height: 1, color: Colors.black12,),
                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,12,12,8), child: Text("Reference", style: AppTheme.ntitleText,),)), Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0), child: Text("0/50",),)],),
                Padding(padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 16.0), child: TextField(
                  controller: referenceTextController,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.transparent,
                  textAlign: TextAlign.start,
                  style: AppTheme.nbodyText,
                  decoration: InputDecoration.collapsed(hintText: "Tap to add a note", hintStyle: AppTheme.nbodyText,),
                ),),
                Container(width: double.infinity, height: 1, color: Colors.black12,),
                Padding(padding: const EdgeInsets.fromLTRB(12, 24, 12, 24), child: Row(children: [
                  const Icon(Icons.lock_sharp, color: Colors.pink,),
                  Expanded(child: TextField(
                    controller: pinTextController,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.transparent,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: AppTheme.pinText,
                    decoration: InputDecoration.collapsed(hintText: "Enter PIN", hintStyle: AppTheme.pinHintText,),
                  )),
                  InkWell(onTap: () {
                    showDialog(context: context,
                        /*builder: (context) => DialogAnim()*/
                        builder: (context) => const Dialog(
                          insetPadding: EdgeInsets.all(20),
                          child: DialogWidget(),
                        ));
                  }, child: const Icon(Icons.arrow_forward, color: Colors.black45, size: 32,),)
                ],),)
              ],),),
            ],
          ),
        )
    );
  }
}