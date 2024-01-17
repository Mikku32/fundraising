import 'package:flutter/material.dart';
import 'package:fundraising/Pages/favPage.dart';
import 'package:fundraising/Pages/firstPage.dart';
import 'package:fundraising/Pages/profilepage.dart';
import 'package:fundraising/Pages/searchPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  
  int _selectedIndex=0;

  List<Widget> _screens = [
    Page1(),
    FavPAge(),
    SearchPage(),
    ProfilePage()
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
       bottomNavigationBar: GNav(
        
        
      curve: Curves.easeInOutCirc,
      
      backgroundColor: const Color.fromARGB(255, 228, 225, 225),
      color: const Color.fromARGB(255, 49, 47, 47),
      activeColor:  Colors.white,
      tabBackgroundColor: Color.fromARGB(255, 37, 35, 35),
      tabBorderRadius: 150,
      tabMargin: EdgeInsets.all(10),
      gap: 8,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      tabs:const [
        GButton(
          icon: Icons.home,
          text: 'Explore',
          ),
        GButton(
          icon: Icons.favorite_border,
          text: 'Favorites',
          ),
        GButton(
          icon: Icons.search,
          text: 'Search',
          ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
          ),
          
      ] ,
      onTabChange: (i) {
        setState(() {
          _selectedIndex=i;
        });
      },
       
      ),
    );
  }
}