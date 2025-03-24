import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;  // Tracks selected tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Updates the selected tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          "Selected Tab: $_selectedIndex",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 60, left: 20, right: 20), // Space from bottom
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,  // Light background for the bottom bar
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.grid_view_outlined, Icons.grid_view, 0),
              _buildNavItem(Icons.mail_outline, Icons.mail, 1),
              _buildNavItem(Icons.show_chart_outlined, Icons.show_chart, 2),
              _buildNavItem(Icons.local_police_outlined, Icons.local_police, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData outlinedIcon, IconData filledIcon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Icon(
        _selectedIndex == index ? filledIcon : outlinedIcon,
        size: 28,
        color: _selectedIndex == index ? Colors.black : Colors.grey, // Change color on selection
      ),
    );
  }
}
