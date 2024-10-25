import 'package:flutter/material.dart';

class HomeTabbar extends StatelessWidget {
  const HomeTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 0.2,
          color: Colors.black,
          indent: 0,
          endIndent: 0,
        ),
        Row(
          children: [
            Image.asset('assets/images/tb_home.png'),
            Image.asset('assets/images/tb_home.png'),
            Image.asset('assets/images/tb_home.png'),
            Image.asset('assets/images/tb_home.png'),
            Image.asset('assets/images/tb_home.png'),
          ],
        ),
      ],
    );
  }
}
