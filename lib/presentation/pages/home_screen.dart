import 'package:flutter/material.dart';
import 'package:instagram/data/data.dart';
import 'package:instagram/domain/models/story.dart';
import 'package:instagram/presentation/widgets/home_post_list.dart';
import 'package:instagram/presentation/widgets/home_story.dart';
import 'package:instagram/presentation/widgets/home_tabbar.dart';
import 'package:instagram/presentation/widgets/home_topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Story> stories = Data().stories;
  final List item = [1, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const HomeTopbar(),
          const Divider(
            color: Colors.black,
            thickness: 0.2,
            indent: 0,
            endIndent: 0,
          ),
          SizedBox(
              height: 90,
              width: MediaQuery.sizeOf(context).width,
              child: Expanded(child: HomeStory(stories: stories))),
          const Divider(
              color: Colors.black, thickness: 0.2, indent: 0, endIndent: 0),
          const HomePostList(),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
