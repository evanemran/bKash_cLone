import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();


    showModalBottomSheet<void>(
      // context and builder are
      // required properties in this widget
      context: context,
      builder: (BuildContext context) {
        // we set up a container inside which
        // we create center column and display text

        // Returning SizedBox instead of a Container
        return SizedBox(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('GeeksforGeeks'),
              ],
            ),
          ),
        );
      },
    );


  }

}