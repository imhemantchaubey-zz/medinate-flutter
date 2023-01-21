import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Medinate.com"),
          leading: IconButton(
            icon: Image.asset(
              'images/logo.jpeg',
              fit: BoxFit.contain,
              height: 32,
            ),
            onPressed: () {},
          )),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
