import 'package:flutter/material.dart';
import 'package:youtube_music_ui_clone/json/songs_json.dart';
import 'package:youtube_music_ui_clone/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/title.png',
              fit: BoxFit.contain,
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Music",
              style: TextStyle(
                  fontSize: 20, color: white, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 180,
            ),
            Icon(
              Icons.cast,
              color: white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              color: white,
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.person,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}

Widget getBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Top Charts",
                        style: TextStyle(
                            fontSize: 20,
                            color: white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(songs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(songs[index]['img']),
                                  fit: BoxFit.cover),
                              color: white,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 160,
                          child: Text(
                            songs[index]['title'],
                            style: TextStyle(
                                fontSize: 14,
                                color: white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 160,
                          child: Text(
                            songs[index]['description'],
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ),
  );
}
