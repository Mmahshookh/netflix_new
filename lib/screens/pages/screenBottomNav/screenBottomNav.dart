import 'package:flutter/material.dart';
import 'package:netflix_new/screens/pages/screenDownloads/screenDownloads.dart';
import 'package:netflix_new/screens/pages/screenFastLaugh/screenFastLaugh.dart';
import 'package:netflix_new/screens/pages/screenHome/screenHomePage.dart';
import 'package:netflix_new/screens/pages/screenNew&hot/screenNew&hot.dart';
import 'package:netflix_new/screens/pages/screenSearch/screenSearch.dart';

class ScreenBottomNav extends StatelessWidget {
  ScreenBottomNav({Key? key}) : super(key: key);
  final ValueNotifier<int> indexChangeValueNotifier = ValueNotifier(0);
  final pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeValueNotifier,
        builder: (context, index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: indexChangeValueNotifier,
        builder: (context, newIndex, child) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeValueNotifier.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[600],
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "New & Hot"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                  ),
                  label: "Fast Laugh"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.arrow_circle_down,
                  ),
                  label: "Downloads"),
            ],
          );
        },
      ),
    );
  }
}
