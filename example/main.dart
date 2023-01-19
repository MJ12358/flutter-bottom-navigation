import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/flutter_bottom_navigation.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlutterBottomNavigation(
        onTap: _pageController.jumpToPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ],
      ),
      body: PageView(
        controller: _pageController,
        // your apps pages go here
        children: const <Widget>[
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
