import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('images/space6.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center),
// children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'My education:',
                  style: TextStyle(
                      fontFamily: 'Philosopher',
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  'I finshed 12 years of school.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  '5 math units.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  '5 english units.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  '5 compurers units.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  '5 robotics units.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  'I graduated from a QA cuorse of basmach in the army.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: const Text(
                  'during my service in the army I experimetned with some programming languages like \n java, javaScript and some QA tools like Selenium and Postman.',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.0,
      width: 16.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 69, 62, 109),
        shape: BoxShape.circle,
      ),
    );
  }
}
