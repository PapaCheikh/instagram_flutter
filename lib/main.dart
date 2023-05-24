import 'package:flutter/material.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/story_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Image.asset(
              'assets/icons/Instagram-Logo.png',
              height: 60,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: 'Photo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Profil')
          ],
        ),
      ),
    );
  }
}
