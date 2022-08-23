import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PurposeWidget extends StatelessWidget {
  const PurposeWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 100, child: Image.asset(image, fit: BoxFit.fitWidth,)),
          const SizedBox(height: 5.0),
          Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(2,8,2,8), child: Text(title,
              style: AppTheme.offerText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis),))],),
        ],
      ),
    );
  }
}