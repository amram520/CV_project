import 'package:flutter/material.dart';

class galeryPage extends StatefulWidget {
  const galeryPage({super.key});

  @override
  State<galeryPage> createState() => _galeryPageState();
}

class _galeryPageState extends State<galeryPage> {
  List<Image> imss = [Image.asset('images/ji'), Image.asset('hhjh')];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[],
      ),
    );
  }
}

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
