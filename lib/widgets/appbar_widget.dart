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
                padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const AssetImage('assets/profile.png'),
                ),
              ),
              const SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  const Text('Evan Emran',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0)),
                  const SizedBox(height: 6.0),
                  Container(
                    width: 150,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 25,
                            height: 25,
                            padding: const EdgeInsets.all(2.0),
                            child: const CircleAvatar(
                              backgroundColor: Colors.pink,
                              backgroundImage:
                              AssetImage('assets/currency.png'),
                            ),
                          ),
                        ),
                        const Text('Tap for Balance',
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                  )
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
              width: 50, height: 50, child: Image.asset('assets/logo.png')),),
        )
      ],
    );
  }

}
