import 'package:flutter/material.dart';
import 'package:flutter_application_1/galery.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: rootPage(),
    );
  }
}

class rootPage extends StatefulWidget {
  const rootPage({super.key});

  @override
  State<rootPage> createState() => _rootPageState();
}

class _rootPageState extends State<rootPage> {
  int currentPage = 0;
  List<Widget> pages = const [homePage(), galeryPage(), profilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'hello welcome to daniel cv',
          style: TextStyle(
            fontFamily: 'volcana',
            color: Color.fromARGB(255, 134, 182, 4),
            fontSize: 30,
            fontStyle: FontStyle.italic,
            // fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 43, 67, 87),
        // elevation: 0.5,
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                  size: 35,
                ),
                label: 'home'),
            NavigationDestination(
                icon: Icon(
                  Icons.camera,
                  color: Colors.purple,
                  size: 35,
                ),
                label: 'gallery'),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: Colors.green,
                  size: 35,
                ),
                label: 'profile'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
      body: pages[currentPage],
    );
  }
}
