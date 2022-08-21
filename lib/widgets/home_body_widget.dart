import 'package:bkash/widgets/home_menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.only(bottom: 12.0),
            child: Column(children: [
              Row(children: const [
                MenuWidget(title: 'Send Money', image: 'assets/send_money.jpg'),
                MenuWidget(title: 'Cash Out', image: 'assets/cash_out.jpg'),
                MenuWidget(title: 'Top-up', image: 'assets/mobile_recharge.jpg'),
                MenuWidget(title: 'Payment', image: 'assets/make_payment.jpg'),
              ],),
              const SizedBox(height: 8.0,),
              Row(children: const [
                MenuWidget(title: 'Add Money', image: 'assets/add_money.jpg'),
                MenuWidget(title: 'Pay Bill', image: 'assets/pay_bill.jpg'),
                MenuWidget(title: 'Tickets', image: 'assets/tickets.jpg'),
                MenuWidget(title: 'More', image: 'assets/more.jpg'),
              ],),
            ],),
          )
        ],
      ),
    );
  }
}