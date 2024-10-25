import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instagram/domain/models/post.dart';
import 'package:instagram/util/theme.dart';

class HomePost extends StatefulWidget {
  const HomePost({super.key, required this.post});
  final Post post;

  @override
  State<HomePost> createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.post.owner.avatar,
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.owner.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.post.placePost,
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        Stack(alignment: const Alignment(0.9, -0.9), children: [
          CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
              items: widget.post.images
                  .map((item) => Image.asset(
                        item,
                        width: MediaQuery.sizeOf(context).width,
                        // height: 300,
                        fit: BoxFit.fill,
                      ))
                  .toList()),
          SizedBox(
            width: 45,
            height: 26,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xff121212),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Text(
                '${_currentIndex + 1}/${widget.post.images.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: kPrimaryColor),
              ),
            ),
          ),
        ]),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.post.images.map((url) {
            int index = widget.post.images.indexOf(url);
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/tb_favorite.png',
                      width: 32,
                      height: 32,
                    ),
                    Image.asset(
                      'assets/images/post_comment.png',
                      width: 32,
                      height: 32,
                    ),
                    Image.asset(
                      'assets/images/tb_mess.png',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/post_pin.png',
                width: 32,
                height: 32,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Image.asset(
                widget.post.owner.avatar,
                width: 17,
                height: 17,
              ),
              const SizedBox(
                width: 5,
              ),
              RichText(
                  text: TextSpan(
                text: '',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: widget.post.userLikePost.first.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  const TextSpan(text: ' and '),
                  const TextSpan(
                      text: '44,689',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' others '),
                ],
              ))
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: widget.post.comment.entries.first.key.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const TextSpan(text: " "),
                      TextSpan(text: widget.post.comment.entries.first.value)
                    ]),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Image.asset(
                widget.post.comment.entries.first.key.avatar,
                width: 17,
                height: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 36,
                width: MediaQuery.sizeOf(context).width * 0.87,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Enter your comment...',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
            color: Colors.black, thickness: 0.2, indent: 0, endIndent: 0),
      ],
    );
  }
}
