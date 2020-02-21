import 'package:flutter/material.dart';
import 'package:tu_niu/tab/discover_page.dart';
import 'package:tu_niu/tab/home_page.dart';
import 'package:tu_niu/tab/location_page.dart';
import 'package:tu_niu/tab/message_page.dart';
import 'package:tu_niu/tab/my_page.dart';

List<Widget> pages = [
  HomePage(),
  LocationPage(),
  MessagePage(),
  DiscoverPage(),
  MyPage(),
];

class TabNavigator extends StatefulWidget {
  TabNavigator({Key key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (ctx, index) => pages[index],
        itemCount: pages.length,
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 12),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 12),
        items: [
          BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('上海'), icon: Icon(Icons.location_city)),
          BottomNavigationBarItem(title: Text('消息'), icon: Icon(Icons.message)),
          BottomNavigationBarItem(title: Text('发现'), icon: Icon(Icons.disc_full)),
          BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.satellite)),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
