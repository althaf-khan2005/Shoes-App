import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class gnav extends StatelessWidget {
  final void Function(int)? ontap;

  const gnav({super.key,
  required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange:(value) => ontap!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
      
          GButton(
            icon:Icons.home,
            text: "Shop",
             ),
      
              GButton(
            icon:Icons.shopping_bag_rounded,
            text: "Cart",
             ),
        ],
      
      ),
    );
  }
}