import 'package:flutter/material.dart';
import 'package:maonamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        settings: RouteSettings(name: 'page3'),
                        builder: (context) => Page3()));
                  },
                  child: Text('Page 3 via page')),
            ],
          ),
        ),
      ),
    );
  }
}
