import 'package:bkash/widgets/appbar_widget.dart';
import 'package:bkash/widgets/home_menu_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_widget.dart';

final List<String> imgList = [
  'https://www.bkash.com/sites/default/files/userfiles/files/April2021/Campaign-02-bangla.jpg',
  'https://www.bkash.com/sites/default/files/userfiles/files/Feb-2022/Welcome%20pack%20inner%20page.jpg',
  'https://www.bkash.com/sites/default/files/Image%20-%20English.jpg',
];

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
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
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('My bKash'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CardWidget(
                              title: 'Evan Emran',
                              image: 'assets/mobile_recharge.jpg'),
                          CardWidget(
                              title: 'Shwapno', image: 'assets/make_payment.jpg'),
                          CardWidget(
                              title: 'Internet', image: 'assets/pay_bill.jpg'),
                          CardWidget(
                              title: 'Card', image: 'assets/add_money.jpg'),
                          CardWidget(
                              title: 'Evan Emran',
                              image: 'assets/mobile_recharge.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            //will add carousal ad here
            _buildImageSlider(),


            Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Suggestions'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CardWidget(
                              title: 'BTCL',
                              image: 'assets/btcl.jpg'),
                          CardWidget(
                              title: 'Akash', image: 'assets/akash.jpg'),
                          CardWidget(
                              title: 'Ajker Deal', image: 'assets/ajkerdeal.jpg'),
                          CardWidget(
                              title: 'Daraz', image: 'assets/daraz.jpg'),
                          // CardWidget(
                          //     title: 'Desco', image: 'assets/desco.png'),
                          CardWidget(
                              title: 'Sti Line',
                              image: 'assets/stiline.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSlider(){
    return Container(padding: const EdgeInsets.all(8.0), child: CarouselSlider(
      options: CarouselOptions(height: 120.0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        disableCenter: true,
        viewportFraction: 1,
        enlargeCenterPage: true,
      ),
      items: imgList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                image: DecorationImage(
                  image: NetworkImage(i),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    ),);
  }
}