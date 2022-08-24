import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animated_button.dart';

class ConfirmationWidget extends StatelessWidget {
  const ConfirmationWidget({
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
            Row(children: [Padding(padding: EdgeInsets.fromLTRB(12,8,4,4), child: Text("Your ", style: AppTheme.dialogconfirmText,),),
              Padding(padding: EdgeInsets.fromLTRB(0,8,4,4), child: Text("Send Money ", style: AppTheme.dialogconfirmTextBold,),),
              Expanded(child: Padding(padding: EdgeInsets.fromLTRB(0,8,12,4), child: Text("is", style: AppTheme.dialogconfirmText,),))],),

            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,4,12,24), child: Text("Successful!", style: AppTheme.dialogconfirmTextGreen,),))],),

            Padding(padding: const EdgeInsets.fromLTRB(18, 12, 12, 24), child: Row(children: [
              Image.asset("assets/user.png", height: 50, width: 50, fit: BoxFit.fitWidth,),
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
                Text('Time'), SizedBox(height: 4,), Text('08:33am 08/06/22')
              ],),)),
              Container(color: Colors.black12, width: 1, height: 50,),
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('Transaction ID'), SizedBox(height: 4,),  Text('9FGH7YHDSE')
              ],),)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('Total'), SizedBox(height: 4,), Text('৳505.00')
              ],),)),
              Container(color: Colors.black12, width: 1, height: 50,),
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('New Balance'), SizedBox(height: 4,),  Text('৳6995.25')
              ],),)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text('Reference'), SizedBox(height: 4,), Text('N/A')
              ],),)),
              Container(color: Colors.black12, width: 1, height: 50,),
              Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                Text(' '), SizedBox(height: 4,),  Text('')
              ],),)),
            ],),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),

            Container(
              margin: EdgeInsets.all(8),
              width: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.pink
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Padding(padding: EdgeInsets.all(8), child: Row(children: [const Icon(Icons.phone_forwarded_sharp, color: Colors.pink,), Expanded(child: Text("Call", style: AppTheme.callIconText, textAlign: TextAlign.center,))],),),),

            Container(color: Colors.black12, width: double.infinity, height: 1,),

          ],),
        )),
        AnimatedButton(
          onComplete: _onConfirmed,
        )
      ],),
    );
  }

  void _onConfirmed() {
    //Do your task whatever you want
    //As an example, Let's show a dummy dialog
    /*showDialog(
        context: context,
        builder: (context){
          return Material(
            type: MaterialType.transparency,
            child: Center(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32,vertical: 72),
                margin: EdgeInsets.symmetric(horizontal: 32,vertical: 72),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check,color:Colors.green,size: 96,),
                    Center(
                      child: Text(
                        "Success",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );*/
  }
}