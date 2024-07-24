import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보낸 메일함'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('보낸 메일 목록'),
      ),
    );
  }
}
