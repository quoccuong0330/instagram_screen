import 'package:flutter/material.dart';
import 'package:instagram/data/data.dart';
import 'package:instagram/domain/models/story.dart';

class StoryProvider extends ChangeNotifier {
  Future<List<Story>> getStories() async {
    try {
      List<Story> stories = Data().stories;
      return stories;
    } catch (e) {
      rethrow;
    }
  }
}
