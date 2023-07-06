import 'package:flutter/material.dart';

import 'main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {}, child: Text(box.read('key'))),
      ),
    );
  }
}
