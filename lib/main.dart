import 'package:flutter/material.dart';
import 'package:fyn_music/constants.dart';
import 'package:fyn_music/pages/album_list.dart';
import 'package:fyn_music/pages/music_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: kBlack,
          ),
        ),
        body: MusicList(),
      ),
    );
  }
}
