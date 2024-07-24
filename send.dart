import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보낸 메일함'),
      ),
      body: Center(
        child: Text(
          '여기는 보낸 메일함입니다!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
