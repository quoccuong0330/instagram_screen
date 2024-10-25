import 'package:flutter/material.dart';
import 'package:instagram/data/data.dart';
import 'package:instagram/domain/models/post.dart';
import 'package:instagram/presentation/widgets/home_post.dart';

class HomePostList extends StatefulWidget {
  const HomePostList({super.key});

  @override
  State<HomePostList> createState() => _HomePostListState();
}

class _HomePostListState extends State<HomePostList> {
  List<Post> posts = Data().posts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: posts.map((post) {
        return HomePost(
          post: post,
        );
      }).toList(),
    );
  }
}
