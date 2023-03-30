import 'package:flutter/material.dart';
import 'package:json/screen/albumpage/view/albumb_screen.dart';
import 'package:json/screen/homepage/view/Homepage.dart';
import 'package:json/screen/photopage/view/photo_screen.dart';
import 'package:json/screen/todopage/view/todo_screen.dart';

import '../../commentpage/view/comment_screen.dart';

class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(seconds: 1),
      length:5,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(

              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
              indicatorWeight: 2,
              automaticIndicatorColorAdjustment: true,
              physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
              padding: EdgeInsets.all(10),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    80,
                  ),
                  color: Colors.blue),
              tabs: [
                Tab(
                  text: "user",
                ),
                Tab(
                  text: "album",
                ),
                Tab(
                  text: "photo",
                ),
                Tab(
                  text: "comment",
                ),
                Tab(
                  text: "todo",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
                Home_screen(),
                albumbpage(),
              photopage(),
              commentpage(),
              todopage(),
            ],
          ),
        ),
      ),
    );
  }
}
