import 'package:chat/pages/auth_or_app_page.dart';
import 'package:chat/pages/auth_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ).copyWith(
          colorScheme:
              ThemeData().colorScheme.copyWith(secondary: Colors.blue)),
      home: const AuthOrAppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
