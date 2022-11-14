import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/flutter.png'),
                ),
              ),
              child: Center(child: Text('HAHAHAH')),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Center(
                  child: Image(
                image: NetworkImage(
                    'https://www.materialize.pro/wp-content/uploads/2021/10/FLUTTER-scaled.jpg'),
                fit: BoxFit.cover,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
