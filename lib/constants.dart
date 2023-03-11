import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firstflutter/controllers/auth_controller.dart';
import 'package:firstflutter/views/screens/add_video_screen.dart';
import 'package:firstflutter/views/screens/profile_screen.dart';
import 'package:firstflutter/views/screens/search_screen.dart';
import 'package:firstflutter/views/screens/video_screen.dart';
import 'package:flutter/material.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

var authController = AuthController.instance;
