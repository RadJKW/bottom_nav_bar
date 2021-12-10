import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.adb,
              size: 160.0,
              color: Colors.white,
            ),
            Text(
              "Second Tab",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
