import 'package:flutter/material.dart';

class ReceivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('받은 메일함'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('받은 메일 목록'),
      ),
    );
  }
}
