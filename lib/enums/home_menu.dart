import 'package:bkash/widgets/send_money_widget.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/offer_widget.dart';

enum HomeMenu {
  //top menu
  SEND_MONEY('Send Money', 'assets/send_money.jpg', SendMoneyWidget()),
  CASH_OUT('Cash Out', 'assets/cash_out.jpg', Text("test")),
  TOP_UP('Top-up', 'assets/mobile_recharge.jpg', Text("test")),
  PAYMENT('Payment', 'assets/make_payment.jpg', Text("test")),

  ADD_MONEY('Add Money', 'assets/add_money.jpg', Text("test")),
  PAY_BILL('Pay Bill', 'assets/pay_bill.jpg', Text("test")),
  TICKETS('Tickets', 'assets/tickets.jpg', Text("test")),
  MORE('More', 'assets/more.jpg', Text("test")),

  //my bKash
  TOPUP('Evan Emran', 'assets/mobile_recharge.jpg', Text("test")),
  SHWAPNO('Shwapno', 'assets/make_payment.jpg', Text("test")),
  INTERNET('Internet', 'assets/pay_bill.jpg', Text("test")),
  CARD('Card', 'assets/add_money.jpg', Text("test")),
  ACCOUNT('My Account', 'assets/mobile_recharge.jpg', Text("test")),

  //suggestions
  BTCL('BTCL', 'assets/btcl.jpg', Text("test")),
  AKASH('Akash DTH', 'assets/akash.jpg', Text("test")),
  AJKER_DEAL('Ajker Deal', 'assets/ajkerdeal.jpg', Text("test")),
  DARAZ('Daraz', 'assets/daraz.jpg', Text("test")),
  STYLINE('Sty Line', 'assets/stiline.jpg', Text("test")),


  MOREE('More', 'assets/more.jpg', Text("test"));


  final String title;
  final String icon;
  final Widget widget;

  const HomeMenu(this.title, this.icon, this.widget);
}