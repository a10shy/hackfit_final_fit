import 'package:fitify_flutter/core/friend_list.dart';
import 'package:fitify_flutter/profile/MyHomePageBody.dart';
import 'package:fitify_flutter/services/web_services.dart';
import 'package:fitify_flutter/video_caller/video_caller.dart';
import 'package:fitify_flutter/widget_feed.dart';
import 'package:fitify_flutter/connect_with_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'infrastructure/blocs/bloc/connect_with_new_bloc.dart';
import 'profile/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'Fitify';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConnectWithNewBloc(),
      child: MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ScreenHomePage(),
        routes: {
          '/connect': (context) => const ScreenConnect(),
          '/videocall': (context) => VideoApp(),
          '/profile': (context) => MyHomePage(),
        },
      ),
    );
  }
}

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  State<ScreenHomePage> createState() => Screen_HomePageState();
}

class Screen_HomePageState extends State<ScreenHomePage> {
  int _currentIndex = 0;

  List<Widget> pages = [
    FeedView(),
    MyHomePageBody(),
    const ScreenConnect(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        selectedColorOpacity: 0,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.newspaper),
            title: const Text("Feed"),
            selectedColor: Colors.purple,
          ),

          /// Likes

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        backgroundColor: Colors.red,
        onPressed: () async {
          await WebService.getContactList()
              .then((value) => value!.forEach((element) {
                    StaticLists.friendList.add(element);
                  }));
          Navigator.pushNamed(context, '/connect');
          _currentIndex = 2;
        },
        child: const Icon(Icons.add),
      ),
      body: pages[_currentIndex],
    );
  }
}
