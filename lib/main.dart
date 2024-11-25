// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_demo_app/Screens/video_page.dart';

import 'Services/reel_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoReelPage(
        index: 0,
        reels: ReelService().getReels(),
      ),
    );
  }
}
