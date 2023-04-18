import 'package:flutter/material.dart';
import '../bookshelf/bookshelf_page.dart';
import '../bookstore/bookstore_page.dart';
import '../me/me_page.dart';

///页面列表
const List<Widget> _pageList = [
  BookshelfPage(),
  BookstorePage(),
  MePage(),
];

///tabBar字典
const Map _navigationBarItemMap = {
  "bookshelf": "书架",
  "bookstore": "书城",
  "me": "我的",
};

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  State<TabBarController> createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> {
  int _currentIndex = 0;
  final List<BottomNavigationBarItem> _navigationBarItems = [];

  @override
  void initState() {
    super.initState();

    _prepare();
  }

  ///初始化
  void _prepare() {
    _navigationBarItemMap.forEach((key, value) {
      _navigationBarItems.add(_navigationBarItem(key, value));
    });
  }

  ///barItem点击事件
  void _onTapBottomNavigationBarItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationBarItems,
        currentIndex: _currentIndex,
        onTap: _onTapBottomNavigationBarItem,
      ),
    );
  }

  ///BottomNavigationBarItem封装
  /// 只有这个页面用，所以不抽出去了
  BottomNavigationBarItem _navigationBarItem(key, value) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/${key}_normal.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'assets/images/${key}_selected.png',
        width: 24,
        height: 24,
      ),
      label: value,
      tooltip: "",
    );
  }
}
