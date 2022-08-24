import 'package:bkash/enums/home_menu.dart';
import 'package:bkash/pages/pin_page.dart';
import 'package:bkash/widgets/purpose_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class AmountPage extends StatefulWidget {
  const AmountPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<AmountPage> createState() => _AmountPageState();
}

class _AmountPageState extends State<AmountPage> {
  final amountTextController = TextEditingController();
  Color amtConfirmColor = Colors.black45;

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
                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,4), child: Text("Amount", style: AppTheme.ntitleText,),))],),
                Padding(padding: const EdgeInsets.fromLTRB(24, 12, 12, 12), child: Row(children: [
                  const Icon(Icons.arrow_forward, color: Colors.transparent,),
                  Expanded(child: TextField(
                    controller: amountTextController,
                    onChanged: (text) {
                      if(amountTextController.text.trim()==""){
                        setState(() {
                          amtConfirmColor = Colors.black45;
                        });
                      }
                      else{
                        setState(() {
                          amtConfirmColor = Colors.pink;
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.transparent,
                    textAlign: TextAlign.center,
                    style: AppTheme.amtText,
                    decoration: InputDecoration.collapsed(hintText: "৳0", hintStyle: AppTheme.amtHintText,),
                  )),
                  InkWell(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PinPage(menu: HomeMenu.SEND_MONEY,)),
                    );
                  }, child: Icon(Icons.arrow_forward, color: amtConfirmColor, size: 32,),)
                ],),),
                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,0,12), child: Text("Available balance: ৳7500.25", style: AppTheme.avlAmtText2, textAlign: TextAlign.center,),)),
                ],),
              ],),),

              //purpose
              Card(
                color: Colors.white,
                elevation: 2,
                child: SizedBox(
                  width: Size.infinite.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(children: const [ Expanded(child: Text('Select your purpose')), ],),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: PurposeWidget(
                              title: 'Send Money',
                              image: 'assets/send_money.jpg',),),
                            Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: PurposeWidget(
                              title: 'Gift',
                              image: 'assets/gift.jpg',),),
                            Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: PurposeWidget(
                              title: 'Birthday', image: 'assets/birthday.jpg',),),
                            Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: PurposeWidget(
                              title: 'Wedding', image: 'assets/wedding.jpg',),),
                            Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: PurposeWidget(
                              title: 'Thank you', image: 'assets/thanks.jpg',),),
                            // CardWidget(
                            //     title: 'Desco', image: 'assets/desco.png'),
                            /*OfferWidget(
                              title: 'See all',
                              image: 'assets/stiline.jpg',
                              vendor: '',),*/
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
              
              //priyo list
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Padding(padding: EdgeInsets.fromLTRB(24, 4, 4, 4), child: Row(children: [Image.asset("assets/priyo.jpg", height: 40, width: 40,) , Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,4), child: Text("Add this number to my Priyo list", style: AppTheme.priyoText,),))],),),
              ],),),
            ],
          ),
        )
    );
  }
}