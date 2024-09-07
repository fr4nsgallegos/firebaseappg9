import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseappg9/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCc6LLtpy4hfG-nqa_3TJrsWvA7rNdqKDk",
          appId: "1:139103244634:android:64637c19cf4f757eafe363",
          messagingSenderId: "139103244634",
          projectId: "groupg9-61915"));
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}
