import 'package:edspert_ichsan_nugraha/presentation/screen/diskusi/page/diskusi_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/home/page/home_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/navbar/controller/navbar_controller.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());

  final List<Widget> tabs = [
    HomePage(),
    DiskusiPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: tabs,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1000,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottomNavItem(const Icon(Icons.home), 'Home'),
            _bottomNavItem(
                const ImageIcon(
                    AssetImage('assets/images/ic_diskusi_soal.png')),
                'Diskusi Soal'),
            _bottomNavItem(const Icon(Icons.person), 'Profile'),
          ],
        ),
      );
    });
  }
}

_bottomNavItem(Widget icon, String label) {
  return BottomNavigationBarItem(icon: icon, label: label);
}