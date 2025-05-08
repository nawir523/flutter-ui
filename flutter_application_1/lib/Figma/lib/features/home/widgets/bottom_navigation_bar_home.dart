import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbarHome extends StatefulWidget {
  const BottomNavbarHome({super.key});

  @override
  State<BottomNavbarHome> createState() => _BottomNavbarHomeState();
}

class _BottomNavbarHomeState extends State<BottomNavbarHome> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": "assets/icons/home.svg",
    },
    {
      "title": "Chart",
      "icon": "assets/icons/cart.svg",
    },
    {
      "title": "Favorites",
      "icon": "assets/icons/favorite.svg",
    },
    {
      "title": "Account",
      "icon": "assets/icons/profile.svg",
    },
  ];

  int _selectedItem = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor:
          Colors.white54.withOpacity(0.8), // Dark background for elegance
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.white54, // Light color for unselected items
      elevation: 10, // Subtle elevation for a modern look
      type: BottomNavigationBarType.fixed,
      items: menuItems
          .map(
            (item) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                item["icon"],
                color: _selectedItem == menuItems.indexOf(item)
                    ? Colors.blueAccent
                    : Colors.grey, // Color change when item is selected
              ),
              label: item["title"],
              activeIcon: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent, // Active item background color
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white54.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  item["icon"],
                  colorFilter: const ColorFilter.mode(
                    Colors.blue,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          )
          .toList(),
      currentIndex: _selectedItem,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
