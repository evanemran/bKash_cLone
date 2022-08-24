import 'dart:async';

import 'package:bkash/pages/home_page.dart';
import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animated_button.dart';

class ConfirmationWidget extends StatefulWidget {
  const ConfirmationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ConfirmationWidget> createState() => _ConfirmationWidgetState();

}

class _ConfirmationWidgetState extends State<ConfirmationWidget> {

  FutureBuilder _getWidget(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(milliseconds: 5000)),
        builder: (context, snapshot) {
// Checks whether the future is resolved, ie the duration is over
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(children: [
              Expanded(child: Container(
                margin: EdgeInsets.fromLTRB(12, 40, 12, 0),
                child: Column(children: [
                  Row(children: [
                    Expanded(child: Column(children: [
                      Row(children: [Padding(padding: EdgeInsets.fromLTRB(12,8,4,4), child: Text("Your ", style: AppTheme.dialogconfirmText,),),
                        Padding(padding: EdgeInsets.fromLTRB(0,8,4,4), child: Text("Send Money ", style: AppTheme.dialogconfirmTextBold,),),
                        Expanded(child: Padding(padding: EdgeInsets.fromLTRB(0,8,12,4), child: Text("is", style: AppTheme.dialogconfirmText,),))],),

                      Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,4,12,24), child: Text("Successful!", style: AppTheme.dialogconfirmTextGreen,),))],),
                    ],)),
                    Image.asset("assets/success.jpg", height: 30, width: 30, fit: BoxFit.fill,),

                  ],),

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


              Container(
                color: Colors.pink,
                child: InkWell(onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: 'bKash',)
                      ),
                      ModalRoute.withName("/Home")
                  );
                },
                  child: Padding(padding: EdgeInsets.all(12), child: Row(children: [
                    Expanded(child: Text("Back to Home", style: AppTheme.sendFinalText,),),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 30,)
                  ],),),),
              )

            ],);
          } else {
            return Container(decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/kites.gif"),
                fit: BoxFit.cover
              )
            )/*color: Colors.white*/,
              child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center ,children: [
                Image.asset("assets/loading.gif", color: Colors.white, height: 120, width: 120, fit: BoxFit.fill,),
                Padding(padding: const EdgeInsets.fromLTRB(0,8,4,4), child: Text("Processing... ", style: AppTheme.sendFinalText,),)
              ],),),);
          } // Return empty container to avoid build errors
        }
    );
  }

  Widget getWidget(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), (){
      return Column(children: [
        Expanded(child: Container(
          margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(children: [
            Row(children: [
              Expanded(child: Column(children: [
                Row(children: [Padding(padding: EdgeInsets.fromLTRB(12,8,4,4), child: Text("Your ", style: AppTheme.dialogconfirmText,),),
                  Padding(padding: EdgeInsets.fromLTRB(0,8,4,4), child: Text("Send Money ", style: AppTheme.dialogconfirmTextBold,),),
                  Expanded(child: Padding(padding: EdgeInsets.fromLTRB(0,8,12,4), child: Text("is", style: AppTheme.dialogconfirmText,),))],),

                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,4,12,24), child: Text("Successful!", style: AppTheme.dialogconfirmTextGreen,),))],),
              ],)),
              Image.asset("assets/success.jpg", height: 30, width: 30, fit: BoxFit.fill,),

            ],),

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


        Container(
          color: Colors.pink,
          child: InkWell(onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'bKash',)
                ),
                ModalRoute.withName("/Home")
            );
          },
            child: Padding(padding: EdgeInsets.all(12), child: Row(children: [
              Expanded(child: Text("Back to Home", style: AppTheme.sendFinalText,),),
              Icon(Icons.arrow_forward, color: Colors.white, size: 30,)
            ],),),),
        )

      ],);
    });

    return Container(color: Colors.white, child: Center(child: Image.asset("assets/loading.gif", color: Colors.pink, height: 120, width: 120, fit: BoxFit.fill,),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),*/
      body: _getWidget(context),
    );
  }
}