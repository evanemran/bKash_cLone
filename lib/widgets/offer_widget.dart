import 'package:bkash/styles/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
    required this.title,
    required this.image, required this.vendor,
  }) : super(key: key);
  final String title;
  final String image;
  final String vendor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 140, child: Image.asset(image, fit: BoxFit.fill,)),
          const SizedBox(height: 5.0),
          Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8,4,2,2), child: Text(title,
              style: AppTheme.offerText,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis),))],),
          Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8,2,2,4), child: Text(vendor,
              style: AppTheme.offerVendorText,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis),))],),
        ],
      ),
    );
  }
}