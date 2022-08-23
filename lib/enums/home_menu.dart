import 'package:bkash/styles/AppText.dart';
import 'package:bkash/widgets/send_money_widget.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/offer_widget.dart';

enum HomeMenu {
  //top menu
  SEND_MONEY('Send Money', 'assets/send_money.jpg', SendMoneyWidget()),
  CASH_OUT('Cash Out', 'assets/cash_out.jpg', Text(AppText.placeholder)),
  TOP_UP('Top-up', 'assets/mobile_recharge.jpg', Text(AppText.placeholder)),
  PAYMENT('Payment', 'assets/make_payment.jpg', Text(AppText.placeholder)),

  ADD_MONEY('Add Money', 'assets/add_money.jpg', Text(AppText.placeholder)),
  PAY_BILL('Pay Bill', 'assets/pay_bill.jpg', Text(AppText.placeholder)),
  TICKETS('Tickets', 'assets/tickets.jpg', Text(AppText.placeholder)),
  MORE('More', 'assets/more.jpg', Text(AppText.placeholder)),

  //my bKash
  TOPUP('Evan Emran', 'assets/mobile_recharge.jpg', Text(AppText.placeholder)),
  SHWAPNO('Shwapno', 'assets/make_payment.jpg', Text(AppText.placeholder)),
  INTERNET('Internet', 'assets/pay_bill.jpg', Text(AppText.placeholder)),
  CARD('Card', 'assets/add_money.jpg', Text(AppText.placeholder)),
  ACCOUNT('My Account', 'assets/mobile_recharge.jpg', Text(AppText.placeholder)),

  //suggestions
  BTCL('BTCL', 'assets/btcl.jpg', Text(AppText.placeholder)),
  AKASH('Akash DTH', 'assets/akash.jpg', Text(AppText.placeholder)),
  AJKER_DEAL('Ajker Deal', 'assets/ajkerdeal.jpg', Text(AppText.placeholder)),
  DARAZ('Daraz', 'assets/daraz.jpg', Text(AppText.placeholder)),
  STYLINE('Sty Line', 'assets/stiline.jpg', Text(AppText.placeholder)),


  MOREE('More', 'assets/more.jpg', Text(AppText.placeholder));


  final String title;
  final String icon;
  final Widget widget;

  const HomeMenu(this.title, this.icon, this.widget);
}