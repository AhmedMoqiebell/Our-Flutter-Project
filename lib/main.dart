import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pages/home_page.dart';
import 'pages/courses_page.dart';
import 'pages/chats_page.dart';
import 'pages/profile.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; 

  final List<Widget> _pages = [
    HomePage(),
    CoursesPage(),
    ChatsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: const Color(0xFFFBF3F2),
          selectedItemColor: Colors.red.shade700,
          unselectedItemColor: Colors.red.shade300,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home-2.svg', width: 24, height: 24),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/play.svg', width: 24, height: 24),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/message-text.svg', width: 24, height: 24),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/frame.svg', width: 24, height: 24),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
