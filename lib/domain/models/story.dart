import 'package:instagram/domain/models/user.dart';

class Story {
  final User user;
  final String contentStory;
  Story({
    required this.user,
    required this.contentStory,
  });
}
