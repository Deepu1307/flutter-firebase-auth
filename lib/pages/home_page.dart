import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

// Forth state management example: Favourite App using GetX state management
class _HomeScreenState extends State<HomePage> {


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite App"),
      ),
   
    );
  }
}

