import 'package:flutter/material.dart';
import 'package:instagram/presentation/widgets/home_post.dart';

class HomePostList extends StatefulWidget {
  const HomePostList({super.key, required this.posts});
  final List posts;
  @override
  State<HomePostList> createState() => _HomePostListState();
}

class _HomePostListState extends State<HomePostList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.posts.map((post) {
        return HomePost(
          post: post,
        );
      }).toList(),
    );
  }
}
