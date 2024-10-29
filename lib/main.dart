import 'package:flutter/material.dart';
import 'package:klinik_app/ui/poli_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Klinik APP",
      debugShowCheckedModeBanner: false,
      home: PoliPage(),
    );
  }
}
