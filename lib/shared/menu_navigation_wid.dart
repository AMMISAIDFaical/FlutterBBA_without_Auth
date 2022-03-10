import 'package:flutter/material.dart';

class MenuNavigation extends StatelessWidget {
  const MenuNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/bmi');
            break;
          case 2:
            Navigator.pushNamed(context, '/shop');
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.festival_sharp),
          label: 'shows',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'shop',
        ),
      ],
    );
  }
}
