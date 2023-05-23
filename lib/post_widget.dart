import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List posts = [
    {
      "pseudo": 'Papa',
      "photo": 'assets/images/posts/personne_1.png',
      "photoProfil": 'assets/images/photoProfil/user1.png',
      "description":
          'amazing personne. Beautifull amazing personne. Beautifull amazing personne'
    },
    {
      "pseudo": 'John',
      "photo": 'assets/images/posts/personne_2.png',
      "photoProfil": 'assets/images/photoProfil/user2.jpg',
      "description": 'Awesome person. Lovely'
    },
    {
      "pseudo": 'Jane',
      "photo": 'assets/images/posts/personne_4.jpg',
      "photoProfil": 'assets/images/photoProfil/user3.jpg',
      "description":
          'Incredible individual. Stunning Incredible individual. Stunning'
    },
    {
      "pseudo": 'Alex',
      "photo": 'assets/images/posts/personne_5.jpg',
      "photoProfil": 'assets/images/photoProfil/user4.jpg',
      "description": 'Fantastic person. Gorgeous'
    },
    {
      "pseudo": 'Aida',
      "photo": 'assets/images/posts/personne_6.png',
      "photoProfil": 'assets/images/photoProfil/user4.jpg',
      "description": 'Fantastic person. Gorgeous Fantastic person. Gorgeous'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: posts.map((post) {
      return Column(
        children: [
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(post['photoProfil']),
                ),
                const SizedBox(width: 10),
                Text(
                  post['pseudo'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  "assets/icons/verification-badge.png",
                  height: 30,
                ),
                Expanded(child: Container()),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(post['photo']), fit: BoxFit.cover)),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_outline)),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(post['photo']),
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Aimé par ',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                      TextSpan(
                          text: post['pseudo'],
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      const TextSpan(
                        text: ' et ',
                      ),
                      const TextSpan(
                          text: '123 personnes',
                          style: TextStyle(fontWeight: FontWeight.w600))
                    ]))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'see more',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'see 35 comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '16 minutes.',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                      const Text(
                        ' Translate',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ))
        ],
      );
    }).toList());
  }
}
