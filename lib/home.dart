import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _nameState();
}

class _nameState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/space8.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
              margin: const EdgeInsets.fromLTRB(150.0, 0.0, 150.0, 0.0),
              child: const Text(
                'Hello my name is Daniel Amram. I am 23 years old. I live in Ramat-Gan. I have 3 sibling and I am the little one. I graduated 5 years ago.' +
                    'A little about myself I studied at a religious high school in Ramat Gan later It was important to me to continue studying the Bible, therefore I decided that before the army I would continue to study for a few more years at the yeshiva in Mitzpe Ramon, which was a great experience.' +
                    'It was important to me to continue studying the Bible, therefore I decided that before the army I would continue to study for a few more years at the yeshiva in Mitzpe Ramon, which was a great experience.' +
                    'My main hobby is traveling mainly abroad, I hiked in part of israel trail, and I did treks in Italy and Georgia and France and the Netherlands and in addition I was on cruises in the Mediterranean Sea',
                style: TextStyle(
                  fontFamily: 'indieFlower',
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
