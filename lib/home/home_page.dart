import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App bar exemplo',
          style: TextStyle(
              fontFamily: 'Tourney', fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      body: Center(child: Text('Bem-Vindo...')),
    );
  }
}
