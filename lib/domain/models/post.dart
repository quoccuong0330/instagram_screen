import 'package:instagram/domain/models/user.dart';

class Post {
  Post({
    required this.owner,
    required this.placePost,
    required this.images,
    required this.userLikePost,
    required this.comment,
  });

  final User owner;
  final String placePost;
  final List<String> images;
  final List<User> userLikePost;
  final Map<User, String> comment;
}
