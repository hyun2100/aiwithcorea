import 'package:flutter/material.dart';

class ReceivePage extends StatelessWidget {
  const ReceivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('받은 메일함'),
      ),
      body: Center(
        child: Text(
          '여기는 받은 메일함입니다!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
