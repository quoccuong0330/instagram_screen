import 'package:flutter/material.dart';
import 'package:instagram/domain/models/story.dart';

class HomeStory extends StatelessWidget {
  const HomeStory({super.key, required this.stories});
  final List<Story> stories;

  Widget servicesListView() {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          return singleStory(
              imageHef: stories[index].user.avatar,
              name: stories[index].user.name,
              contentStory: stories[index].contentStory);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(), child: servicesListView());
  }
}

Widget singleStory({required imageHef, required name, required contentStory}) {
  return GestureDetector(
    onTap: () => onTapStory(contentStory),
    child: Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Center(
            child: ClipOval(
              child: Image.asset(
                imageHef,
                height: 53,
                width: 53,
              ),
            ),
          ),
          Image.asset(
            'assets/images/st_orval.png',
            height: 62,
            width: 62,
          ),
        ]),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

onTapStory(contentStory) {
  print('Story: ' + contentStory);
}
