import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List storyItems = [
    {"pseudo": 'Papa', "photo": 'assets/images/posts/personne_1.png'},
    {"pseudo": 'Cheikh', "photo": 'assets/images/posts/personne_2.png'},
    {"pseudo": 'Modou', "photo": 'assets/images/posts/personne_4.jpg'},
    {"pseudo": 'Fallou', "photo": 'assets/images/posts/personne_5.jpg'},
    {"pseudo": 'Astou', "photo": 'assets/images/posts/personne_6.png'},
    {"pseudo": 'Khadim', "photo": 'assets/images/posts/personne_8.webp'},
    {"pseudo": 'Pathé', "photo": 'assets/images/posts/personne_9.png'},
    {"pseudo": 'Issa', "photo": 'assets/images/posts/personne_10.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: storyItems.map(
        (story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/story-circle.png.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          );
        },
      ).toList()),
    );
  }
}
