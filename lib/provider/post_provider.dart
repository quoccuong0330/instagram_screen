import 'package:flutter/material.dart';
import 'package:instagram/data/data.dart';
import 'package:instagram/domain/models/post.dart';

class PostProvider extends ChangeNotifier {
  Future<List<Post>> getPosts() async {
    try {
      return Data().posts;
    } catch (e) {
      rethrow;
    }
  }
}
