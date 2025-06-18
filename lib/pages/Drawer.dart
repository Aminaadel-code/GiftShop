import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Aminawe",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            accountEmail: Row(
              children: [
                Text('Email@example.com', style: TextStyle(fontSize: 16, color: Colors.white)),
                SizedBox(width: 8),
                Icon(Icons.edit, size: 18, color: Colors.white),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/a2.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.pink[100],

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90), // الزاوية التي تريد تدويرها

              ),

            ),
          ),
          _drawerItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.chat,
            text: 'Chat',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.shopping_bag,
            text: 'My Products',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.info,
            text: 'About Us',
            onTap: () => Navigator.pop(context),
          ),
          _drawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () => Navigator.pop(context),
          ),
          SizedBox(height: 400),
          Center(
            child: Text(
              'Developed by Amina @2025',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // عنصر قائمة مع تأثير ضغط
  Widget _drawerItem({required IconData icon, required String text, required VoidCallback onTap}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.pink[200], // تأثير عند الضغط
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
          child: Row(
            children: [
              Icon(icon, color: Colors.pink[200]),
              SizedBox(width: 16),
              Text(
                text,
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
