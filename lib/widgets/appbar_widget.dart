import 'package:bkash/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppBarWidgetState();

}

class AppBarWidgetState extends State<AppBarWidget> {
  final GlobalKey<AppBarWidgetState> appBar_key = new GlobalKey<AppBarWidgetState>();
  bool _isAnimation = false;
  bool _isBalanceShown = false;
  bool _isBalance = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: appBar_key,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0, bottom: 4.0),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const AssetImage('assets/profile.png'),
                ),
              ),
              const SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //User Name
                  Text(
                    ' Evan Emran',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  //Button
                  InkWell(
                      onTap: animate,
                      child: Container(
                          width: 160,
                          height: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Stack(alignment: Alignment.center, children: [
                            //Amount
                            AnimatedOpacity(
                                opacity: _isBalanceShown ? 1 : 0,
                                duration: Duration(milliseconds: 500),
                                child: Text('৳ 7500.25',
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 14))),

                            //Balance
                            AnimatedOpacity(
                                opacity: _isBalance ? 1 : 0,
                                duration: const Duration(milliseconds: 300),
                                child: const Text('Tap for balance',
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 14))),

                            //Circle
                            AnimatedPositioned(
                                duration: const Duration(milliseconds: 1100),
                                left: _isAnimation == false ? 5 : 135,
                                curve: Curves.fastOutSlowIn,
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    // padding: const EdgeInsets.only(bottom: 4),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(50)),
                                    child: const FittedBox(
                                        child: Text('৳',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17)))))
                          ])))
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0),
          child: InkWell(onTap:  Scaffold.of(context).openEndDrawer, child: SizedBox(
              width: 34, height: 34, child: Image.asset('assets/rewards.png')),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 12.0),
          child: InkWell(onTap:  Scaffold.of(context).openEndDrawer, child: SizedBox(
              width: 34, height: 34, child: Image.asset('assets/logo.png')),),
        )
      ],
    );
  }

  void animate() async {
    _isAnimation = true;
    _isBalance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
            () => setState(() => _isBalanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBalanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
            () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBalance = true));
  }

}
