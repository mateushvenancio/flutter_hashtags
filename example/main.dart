import 'package:flutter/material.dart';
import 'package:flutter_hashtags/flutter_hashtags.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _hashtags = [];

  final textController = HashtagTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            TextField(
              controller: textController,
            ),
            ..._hashtags.map((e) => Text(e)),
          ],
        ),
      ),
    );
  }
}
