import 'package:flutter/material.dart';
import 'package:maonamassa/navegacao/page1.dart';
import 'package:maonamassa/navegacao/page2.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Container(
        child: Column(
          children: [
            /* Removendo toda a pilha
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          settings: RouteSettings(name: 'page2'),
                          builder: (context) => Page2()),
                      ModalRoute.withName('Page2'));
                },
                child: Text('Page 2 via page')),
                */
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          settings: RouteSettings(name: 'page2'),
                          builder: (context) => Page2()),
                      (route) => route.isFirst); // volta para home page
                },
                child: Text('Page 2 via page')),
          ],
        ),
      ),
    );
  }
}
