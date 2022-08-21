import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 80,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50, child: Image.asset(image)),
          const SizedBox(height: 5.0),
          Text(title,
              style: const TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}