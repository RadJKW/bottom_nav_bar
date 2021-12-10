import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.airport_shuttle,
              size: 160.0,
              color: Colors.white,
            ),
            Text(
              "Third Tab",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
