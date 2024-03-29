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

  /// Defines the appearance of the button items that are
  /// arranged within the bottom navigation bar.
  final List<BottomNavigationBarItem> items;

  /// Called when one of the [items] is tapped.
  final ValueChanged<int> onTap;

  /// The color of the [BottomNavigationBar] itself.
  final Color? backgroundColor;

  /// The z-coordinate of this [BottomNavigationBar].
  final double? elevation;

  /// Defines the layout and behavior of a [BottomNavigationBar].
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
