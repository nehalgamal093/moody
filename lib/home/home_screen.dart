import 'package:flutter/material.dart';
import 'package:moody/home_tab/home_tab.dart';

import '../theme/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png'),
              Badge(
                  backgroundColor: const Color(0xffF04438),
                  smallSize: 8,
                  child: Image.asset('assets/images/notification.png')),
            ],
          ),
        ),
      ),
      body: tabs.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: ColorManager.lightGrayColor,
        selectedItemColor: ColorManager.greenColor,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: onItemTab,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Column(
              children: [
                const ImageIcon(
                  AssetImage('assets/images/home.png'),
                ),
                const SizedBox(height:8,),
               selectedIndex == 0? const CircleAvatar(radius: 2,backgroundColor: ColorManager.greenColor,):const SizedBox()
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const ImageIcon(
                  AssetImage('assets/images/app.png'),
                ),
                const SizedBox(height:8,),
                selectedIndex == 1? const CircleAvatar(radius: 2,backgroundColor: ColorManager.greenColor,):const SizedBox()
              ],
            ),
            label: 'App',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const ImageIcon(
                  AssetImage('assets/images/calendar.png'),
                ),
                const SizedBox(height:8,),
                selectedIndex == 2? const CircleAvatar(radius: 2,backgroundColor: ColorManager.greenColor,):const SizedBox()
              ],
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const ImageIcon(
                  AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(height: 8,),
                selectedIndex == 3? const CircleAvatar(radius: 2,backgroundColor: ColorManager.greenColor,):const SizedBox()
              ],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onItemTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> tabs = [
    const HomeTab(),
    const Center(child: Text('App')),
    const Center(child: Text('Calendar')),
    const Center(child: Text('Profile'))
  ];
}
