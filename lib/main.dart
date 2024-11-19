import 'package:flutter/material.dart';
import 'package:klinik_app/ui/beranda.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Klinik APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Beranda(),
    );
  }
}
