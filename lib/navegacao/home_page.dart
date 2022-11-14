import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maonamassa/navegacao/page2.dart';
import 'package:maonamassa/navegacao/page3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2()));
              },
              child: Text('Page 2 via page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/page2');
              },
              child: Text('Page 2 via named')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/navegacao_param');
              },
              child: Text('Parametros')),
        ]),
      ),
    );
  }
}
