import 'package:flutter/material.dart';
import 'package:lembretes/pages/homepage.dart';
import 'package:lembretes/pages/newtodo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/new': (context) => const NewTodo(),
        },
      );
}
