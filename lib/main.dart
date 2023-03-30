import 'package:flutter/material.dart';
import 'package:json/screen/albumpage/provider/album_provider.dart';
import 'package:json/screen/albumpage/view/albumb_screen.dart';
import 'package:json/screen/commentpage/provider/comment_provider.dart';
import 'package:json/screen/commentpage/view/comment_screen.dart';
import 'package:json/screen/homepage/provider/Home_provider.dart';
import 'package:json/screen/homepage/view/Homepage.dart';
import 'package:json/screen/photopage/provider/photoprovider.dart';
import 'package:json/screen/photopage/view/photo_screen.dart';
import 'package:json/screen/tabbarscreen/view/tabbar_page.dart';
import 'package:json/screen/todopage/provider/todoprovider.dart';
import 'package:json/screen/todopage/view/todo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeprovider(),),
        ChangeNotifierProvider(create: (context) => albumbprovider(),),
        ChangeNotifierProvider(create: (context) => commentprovider(),),
        ChangeNotifierProvider(create: (context) => photoprovider(),),
        ChangeNotifierProvider(create: (context) => todoprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => tabbar_screen(),
          'album' : (context) => albumbpage(),
          'com' : (context) => commentpage(),
          'photo' : (context) => photopage(),
          'todo' : (context) => photopage(),
        },
      ),
    ),
  );
}

