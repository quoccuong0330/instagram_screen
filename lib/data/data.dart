import 'package:instagram/domain/models/post.dart';
import 'package:instagram/domain/models/story.dart';
import 'package:instagram/domain/models/user.dart';

class Data {
  final List<Story> stories = [
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'Your story'),
        contentStory: 'Your story'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'Karennne'),
        contentStory: 'Your Karennne'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'Beatriz'),
        contentStory: 'Your Beatriz'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'Hanna'),
        contentStory: 'Your Hanna'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'Gabriel'),
        contentStory: 'Your Gabriel'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'chaupham__'),
        contentStory: 'Your chaupham'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'avatar 1'),
        contentStory: 'Your avatar'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'avatar 2'),
        contentStory: 'Your avatar'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'avatar 3'),
        contentStory: 'Your avatar'),
    Story(
        user: User(avatar: 'assets/images/avatar.png', name: 'avatar 4'),
        contentStory: 'Your avatar'),
  ];

  final List<Post> posts = [
    Post(
        owner: User(avatar: 'assets/images/avatar.png', name: 'Hanna'),
        placePost: 'Chicago',
        images: [
          'assets/images/post_image.png',
          'assets/images/post_image_1.webp',
          'assets/images/post_image_2.jpeg',
        ],
        userLikePost: [
          User(avatar: 'assets/images/avatar.png', name: 'Hanna')
        ],
        comment: {
          User(avatar: 'assets/images/avatar.png', name: 'Hanna'):
              'The game in Japan was amazing and I want to share some photos'
        }),
    Post(
        owner: User(avatar: 'assets/images/avatar.png', name: 'Rai'),
        placePost: 'Tokyo',
        images: [
          'assets/images/post_image_2.jpeg',
          'assets/images/post_image_1.webp',
          'assets/images/post_image.png',
        ],
        userLikePost: [
          User(avatar: 'assets/images/avatar.png', name: 'Rai')
        ],
        comment: {
          User(avatar: 'assets/images/avatar.png', name: 'Rai'):
              'The game in Japan was amazing'
        }),
    Post(
        owner: User(avatar: 'assets/images/avatar.png', name: 'Rai'),
        placePost: 'Tokyo',
        images: [
          'assets/images/post_image_2.jpeg',
          'assets/images/post_image_1.webp',
          'assets/images/post_image.png',
        ],
        userLikePost: [
          User(avatar: 'assets/images/avatar.png', name: 'Rai')
        ],
        comment: {
          User(avatar: 'assets/images/avatar.png', name: 'Rai'):
              'The game in Japan was amazing'
        }),
    Post(
        owner: User(avatar: 'assets/images/avatar.png', name: 'Rai'),
        placePost: 'Tokyo',
        images: [
          'assets/images/post_image_2.jpeg',
          'assets/images/post_image_1.webp',
          'assets/images/post_image.png',
        ],
        userLikePost: [
          User(avatar: 'assets/images/avatar.png', name: 'Rai')
        ],
        comment: {
          User(avatar: 'assets/images/avatar.png', name: 'Rai'):
              'The game in Japan was amazing'
        })
  ];
}
