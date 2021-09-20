import 'package:flutter/material.dart';
import 'package:youtube_music_ui_clone/screens/home_page.dart';
import 'package:youtube_music_ui_clone/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text(
            "Home",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Explore",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Library",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home_outlined,
      Icons.explore_outlined,
      Icons.library_music_outlined
    ];

    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.grey[900]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              icon: Icon(
                items[index],
                color: activeTab == index ? white : primary,
              ),
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
