import 'package:flutter/material.dart';
import 'package:pet/test/list_of_product.dart';
import 'package:pet/test/my_booking_screen.dart';
import 'package:pet/ui/splash/splas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LIstOfProduct(),
    );
  }
}
