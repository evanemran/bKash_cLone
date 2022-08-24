import 'package:bkash/enums/home_menu.dart';
import 'package:bkash/styles/AppTheme.dart';
import 'package:bkash/widgets/appbar_widget.dart';
import 'package:bkash/widgets/home_menu_widget.dart';
import 'package:bkash/widgets/offer_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/details_page.dart';
import 'card_widget.dart';

final List<String> imgList = [
  'assets/banner_one.png',
  'assets/banner_two.png',
  // 'assets/banner_three.png',
  // 'assets/banner_four.png',
];

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    Key? key
}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<HomeMenu> homeMenuList = [
      HomeMenu.SEND_MONEY,
      HomeMenu.CASH_OUT,
      HomeMenu.TOP_UP,
      HomeMenu.PAYMENT,

      HomeMenu.ADD_MONEY,
      HomeMenu.PAY_BILL,
      HomeMenu.TICKETS,
      HomeMenu.MORE,
    ];

    List<HomeMenu> mybKashList = [
      HomeMenu.TOPUP,
      HomeMenu.SHWAPNO,
      HomeMenu.INTERNET,
      HomeMenu.CARD,
      HomeMenu.ACCOUNT,
    ];

    List<HomeMenu> suggestionList = [
      HomeMenu.BTCL,
      HomeMenu.AKASH,
      HomeMenu.AJKER_DEAL,
      HomeMenu.DARAZ,
      HomeMenu.STYLINE,
    ];



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
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // Generate 100 widgets that display their index in the List.
                children: List.generate(homeMenuList.length, (index) {
                  return Center(
                    child: InkWell(child: MenuWidget(title: homeMenuList[index].title, image: homeMenuList[index].icon),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage(menu: homeMenuList[index],)),
                      );
                    },),
                  );
                }),
              ),
            ),


            //horizontal list
            Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [const Expanded(child: Text('My bKash')), InkWell(child: Text('See All', style: AppTheme.homeHintText,), onTap: () {showCustomBottomSheet(context, mybKashList, 'Recent activities');},)],),
                    ),
                    Container(
                      height: 80, //need to adjust dynamic height
                      child: ListView.builder(
                        itemCount: mybKashList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(child: CardWidget(
                              title: mybKashList[index].title,
                              image: mybKashList[index].icon), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailsPage(menu: mybKashList[index],)),
                            );
                          },);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),


            //old style
            /*Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [Expanded(child: Text('My bKash')), Text('See All', style: AppTheme.homeHintText,)],),
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
            ),*/

            //will add carousal ad here
            _buildImageSlider(),


            //suggestions
            Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [const Expanded(child: Text('Suggestions')), InkWell(child: Text('See All', style: AppTheme.homeHintText,), onTap: () {showCustomBottomSheet(context, suggestionList, 'All Suggestions');},)],),
                    ),
                    Container(
                      height: 80, //need to adjust dynamic height
                      child: ListView.builder(
                        itemCount: suggestionList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(child: CardWidget(
                              title: suggestionList[index].title,
                              image: suggestionList[index].icon), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailsPage(menu: suggestionList[index],)),
                            );
                          },);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                width: Size.infinite.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [Expanded(child: Text('Offers')), Text('See All', style: AppTheme.homeHintText,)],),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: OfferWidget(
                            title: '70tk Discount',
                            image: 'assets/bkash_panda.jpg',
                            vendor: 'Foodpanda',),),
                          Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: OfferWidget(
                            title: '10% Discount', image: 'assets/bkash_empy.jpg', vendor: 'THE EMPYREAN',),),
                          Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: OfferWidget(
                            title: 'Buy 1 Get 1 Offer', image: 'assets/bkash_panda.jpg', vendor: 'Hotel Highgarden',),),
                          Card(elevation: 2, margin: EdgeInsets.all(8.0), color: Colors.white, child: OfferWidget(
                            title: 'Special Offer', image: 'assets/bkash_empy.jpg', vendor: 'Square Hospital Ltd',),),
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
          ],
        ),
      ),
    );
  }

  Widget _buildImageSlider(){
    return Container(padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 12.0), child: CarouselSlider(
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
              child: Image.asset(
                i,
                height: 120,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    ),);
  }

  void showCustomBottomSheet(BuildContext context, List<HomeMenu> list, String title) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          color: Colors.white,
          child: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(20,10,20,10), child: Row(children: [Text(title), Expanded(child:
            InkWell(child: Text('See All', style: AppTheme.homeHintText, textAlign: TextAlign.end,), onTap: () {},))],),),
            Expanded(child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 3,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(list.length, (index) {
                return Center(
                  child: CardWidget(
                      title: list[index].title,
                      image: list[index].icon),
                );
              }),
            ))
          ],),
        );
      },
    );
  }
}