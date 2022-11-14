import 'package:flutter/material.dart';
import 'package:maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('POP')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        settings: RouteSettings(name: 'page4'),
                        builder: (context) => Page4()));
                  },
                  child: Text('Page 4 via page')),
            ],
          ),
        ),
      ),
    );
  }
}
