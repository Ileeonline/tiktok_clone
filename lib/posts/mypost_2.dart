// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';


import '../utils/post_template.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'hammadkhan',
      videoDescription: 'reels for days',
      numberOfLikes: '1.2M',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}