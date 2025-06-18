import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/cart.dart';
import '../../checkOut.dart';


class AppBarShare extends StatelessWidget {
  const AppBarShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, Obj2, child) {
        return Row(
          children: [
            // أيقونة العربة مع العداد
            Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 31,
                    color: Colors.black,

                  ),
                ),
                Positioned(
                  right: 26,
                  top: -4,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${Obj2.SelectedPro.length}",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(width: 16), // مسافة بين الأيقونات

            // أيقونة الجرس الصفراء
            IconButton(
              onPressed: () {
                // هنا ممكن تضيف وظيفة لما تضغط على الجرس
              },
              icon: Icon(
                Icons.notifications, // رمز الجرس
                size: 28,
                color: Colors.yellow[700], // أصفر غامق
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
