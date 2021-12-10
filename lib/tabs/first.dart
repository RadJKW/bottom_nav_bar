import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.favorite,
              size: 160.0,
              color: Colors.white,
            ),
            Text(
              'First Tab',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
