import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jayesh/screens/feed_screens.dart';
import 'package:jayesh/screens/profileScreen.dart';
import 'package:jayesh/screens/search_screen.dart';

import '../screens/add_post_screen.dart';

const webscreensize = 600;

final homeScreenItems = [
 FeedScreen(),
         SearchScreen(),
         AddPostScreen(),
         Center(child: Text("Notification")),
         ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid)
         


];
