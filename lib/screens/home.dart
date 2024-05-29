import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_pulse/screens/home_screen.dart';
import 'package:prime_pulse/screens/profile_screen.dart';
import 'package:prime_pulse/screens/upload_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    // Fetch all barbershops here
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        // inactiveColor: const Color.fromRGBO(116, 127, 134, 1),
        border: Border.all(color: Colors.transparent),
        //height: 20,
        backgroundColor: Colors.blue[50],
        //backgroundColor: Colors.transparent,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.calendar,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.upload,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              size: 25,
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const HomeScreen();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const HomeScreen();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const UploadScreen();
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return const ProfileScreen();
              },
            );
        }
      },
    );
  }
}
