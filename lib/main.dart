// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x = x + 1;
            // print(x);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Rievalda'),
        actions: [
          Center(
            child: OutlinedButton(
              onPressed: () {
                html.window.open('https://github.com/ciinamon/rievalda_flutter', 'new tab');
              },
              child: const Text(
                'Github',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Text(
          x.toString(),
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
