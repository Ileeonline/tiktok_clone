// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';


import '../utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'randomUser',
      videoDescription: 'flutter tutorial',
      numberOfLikes: '1.2B',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.blue[300],
      ),
    );
  }
}