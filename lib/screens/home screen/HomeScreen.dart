import 'package:flutter/material.dart';
import 'package:shat_app/models/MyConsts.dart';
import 'HomeBody.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navIndex = 0;
  navBarOnClick(i) {
    setState(() {
      navIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Chats'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: navBarOnClick,
        currentIndex: navIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Massages',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'Contacts',
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(Icons.call),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('images/mohamed salama.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
