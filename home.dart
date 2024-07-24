import 'package:flutter/material.dart';
import 'send.dart';
import 'receive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메일함 : 알람, 푸쉬, 제스쳐 연습'),
        titleTextStyle: TextStyle(fontSize: 15),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              _showSendAlertDialog(context); // 알림 대화상자 표시
            },
          ),
          IconButton(
            icon: Icon(Icons.receipt),
            onPressed: () {
              _showReceiveAlertDialog(context); // 알림 대화상자 표시
            },
          ),
        ],
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('메뉴'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('보낸 메일함'),
              onTap: () {
                _showSendAlertDialog(context); // 알림 대화상자 표시
              },
            ),
            ListTile(
              title: Text('받은 메일함'),
              onTap: () {
                _showReceiveAlertDialog(context); // 알림 대화상자 표시
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _showSendAlertDialog(context); // 알림 대화상자 표시
              },
              child: Column(
                children: [
                  Icon(Icons.send, size: 48, color: Colors.green),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('보낸 메일함', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Container(),
            ),
            GestureDetector(
              onTap: () {
                _showReceiveAlertDialog(context); // 알림 대화상자 표시
              },
              child: Column(
                children: [
                  Icon(Icons.receipt, size: 48, color: Colors.green),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('받은 메일함', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 보낸 메일함 알림 대화상자 함수
  void _showSendAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('이동'),
          content: Text('보낸 메일함으로 이동하시겠습니까?'),
          actions: [
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
              },
            ),
            TextButton(
              child: Text('보낸 메일함 이동', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendPage()),
                ); // 다음 페이지로 이동
              },
            ),
          ],
        );
      },
    );
  }

  // 받은 메일함 알림 대화상자 함수
  void _showReceiveAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('이동'),
          content: Text('받은 메일함으로 이동하시겠습니까?'),
          contentPadding: EdgeInsets.fromLTRB(70, 20, 70, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // 모서리를 직각으로 설정
          ),
          actions: [
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
              },
            ),
            TextButton(
              child: Text('받은 메일함 이동', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceivePage()),
                ); // 다음 페이지로 이동
              },
            ),
          ],
        );
      },
    );
  }
}
