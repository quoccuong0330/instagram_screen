import 'package:flutter/material.dart';
import 'package:instagram/util/theme.dart';

class HomeTopbar extends StatelessWidget {
  const HomeTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTapCamera,
            child: Image.asset(
              'assets/images/tb_camera.png',
              color: kBlackColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/logo.png',
              color: kBlackColor,
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: onTapTv,
                child: Image.asset(
                  'assets/images/tb_tv.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: onTapMessage,
                child: Image.asset(
                  'assets/images/tb_mess.png',
                  color: kBlackColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

onTapCamera() {
  print('Camera');
}

onTapTv() {
  print('Tv');
}

onTapMessage() {
  print('Message');
}
