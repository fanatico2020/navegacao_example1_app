import 'package:flutter/material.dart';

import 'navegacao/home_page.dart';
import 'images/images_page.dart';
import 'navegacao/page1.dart';
import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao/page4.dart';
import 'navegacao_params/detalhe.dart';
import 'navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      routes: {
        '/': (_) => HomePage(),
        '/page1': (_) => Page1(),
        '/page2': (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
        '/navegacao_param': (_) => Lista(),
        '/detalhe': (_) => Detalhe(),
      },
    );
  }
}
