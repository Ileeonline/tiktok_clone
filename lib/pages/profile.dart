// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../utils/profiletab_1.dart';
import '../utils/profiletab_2.dart';
import '../utils/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              const Text('Ilyas khan', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.person_add, color: Colors.black),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
            // username
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '@ilee__online',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            // number of following, followers, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: const Column(
                      children: [
                        Text(
                          '8M',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      children: [
                        Text(
                          '56',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '  Likes  ',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // buttons -> edit profile, insta links, bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 40),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text('Edit profile',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // bio
            Text(
              'Tap to add bio',
              style: TextStyle(color: Colors.grey[700]),
            ),

            // default tab controller

            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.videocam_rounded, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
              ],
            ),

            const Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
