import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:instagram/presentation/pages/home_screen.dart';
import 'package:instagram/presentation/widgets/tabbar_bottom.dart';
import 'package:instagram/util/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ColorfulSafeArea(
        bottom: false,
        child: TabbarBottom(),
      )),
    );
  }
}
