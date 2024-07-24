import 'package:flutter/material.dart';
import 'send.dart';
import 'receive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메일함'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.receipt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceivePage()),
              );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendPage()),
                );
              },
            ),
            ListTile(
              title: Text('받은 메일함'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceivePage()),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendPage()),
                );
              },
              child: Column(
                children: [
                  Icon(Icons.send, size: 48, color: Colors.green),
                  SizedBox(height: 8),
                  Text('보낸 메일함', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            SizedBox(height: 40), // 두 아이콘 사이의 간격
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceivePage()),
                );
              },
              child: Column(
                children: [
                  Icon(Icons.receipt, size: 48, color: Colors.green),
                  SizedBox(height: 8),
                  Text('받은 메일함', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
