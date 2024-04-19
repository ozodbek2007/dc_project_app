import 'package:dc_project_app/screen/lessons_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SoglomAyolApp());
}
class SoglomAyolApp extends StatelessWidget {
  const SoglomAyolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LessonsPage(),
    );
  }
}
