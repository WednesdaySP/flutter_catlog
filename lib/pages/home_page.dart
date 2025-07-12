import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catelog"),
        elevation: 2,
      ),
      body: Center(
        child: Text("Shashi"),
      ),
      drawer: Drawer(),
    );
  }
}