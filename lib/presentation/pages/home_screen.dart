import 'package:flutter/material.dart';
import 'package:instagram/domain/models/story.dart';
import 'package:instagram/presentation/widgets/home_post_list.dart';
import 'package:instagram/presentation/widgets/home_story.dart';
import 'package:instagram/presentation/widgets/home_topbar.dart';
import 'package:instagram/provider/post_provider.dart';
import 'package:instagram/provider/story_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StoryProvider>().getStories();
    context.read<PostProvider>().getPosts();
  }

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
              child: Expanded(
                  child: FutureBuilder(
                future: context.read<StoryProvider>().getStories(),
                initialData: const [],
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    return HomeStory(stories: snapshot.data!);
                  }
                  return const CircularProgressIndicator();
                },
              ))),
          const Divider(
              color: Colors.black, thickness: 0.2, indent: 0, endIndent: 0),
          FutureBuilder(
            future: context.read<PostProvider>().getPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomePostList(posts: snapshot.data!);
              }
              return const CircularProgressIndicator();
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
