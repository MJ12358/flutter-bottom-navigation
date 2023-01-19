import 'package:flutter/material.dart';

class FlutterBottomNavigation extends StatefulWidget {
  const FlutterBottomNavigation({
    Key? key,
    required this.items,
    required this.onTap,
    this.backgroundColor,
    this.elevation,
    this.type = BottomNavigationBarType.fixed,
  }) : super(key: key);

  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final Color? backgroundColor;
  final double? elevation;
  final BottomNavigationBarType type;

  @override
  State<FlutterBottomNavigation> createState() =>
      _FlutterBottomNavigationState();
}

class _FlutterBottomNavigationState extends State<FlutterBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: widget.backgroundColor,
      currentIndex: _currentIndex,
      elevation: widget.elevation,
      items: widget.items,
      onTap: (int value) {
        setState(() {
          _currentIndex = value;
        });
        widget.onTap(value);
      },
      type: widget.type,
    );
  }
}
