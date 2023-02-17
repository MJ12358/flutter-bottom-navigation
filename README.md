# Flutter Bottom Navigation

## Description

A simple wrapper for flutters BottomNavigationBar that handles the current index for you.

## Usage

```dart
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterBottomNavigation(
      onTap: (int currentIndex) {
        _showMyPage(currentIndex);
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(),
        BottomNavigationBarItem(),
      ],
    ),
  };
}
```
