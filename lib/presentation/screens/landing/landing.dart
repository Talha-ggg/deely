import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:deely/presentation/screens/landing/tabs/categroies/categories.dart';
import 'package:deely/presentation/screens/landing/tabs/home/main_home.dart';
import 'package:deely/presentation/screens/landing/tabs/location/location.dart';
import 'package:deely/presentation/screens/landing/tabs/profile/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    CategoriesPage(),
    LocationPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar:
      Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                _buildBottomNavItem(Icons.home_filled, 'Home', 0),
                _buildBottomNavItem(Icons.grid_view_rounded, 'Category', 1),
                _buildBottomNavItem(Icons.location_on_rounded, 'Location', 2),
                _buildBottomNavItem(Icons.person_2_rounded, 'Profile', 3),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: MyColors.white,
              unselectedItemColor: MyColors.lightGrey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              enableFeedback: false,
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: _selectedIndex == index
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyColors.greenNav, MyColors.lightBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, color: MyColors.white, size: 17),
                  TextUtils.txt(text: label, color: MyColors.white, fontSize: 12, fontWeight: FontWeight.w400),
                ],
              ),
            )
          : Icon(icon, size: 18),
      label: label,
    );
  }
}
