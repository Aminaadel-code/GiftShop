import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          serviceCard(
            image: 'assets/flower.png',
            title: 'Flower Bouquets',
            description: 'Elegant and fresh flower bouquets for every occasion.',
          ),
          serviceCard(
            image: 'assets/doll2.png',
            title: 'Kids Gifts',
            description: 'Fun and unique gifts for all ages.',
          ),
          serviceCard(
            image: 'assets/men2.png',
            title: 'Men\'s Gifts',
            description: 'Elegant gifts for modern men at great prices.',
          ),
          serviceCard(
            image: 'assets/gerag.png',
            title: 'Graduation Gifts',
            description: 'Celebrate success with our special graduation sets.',
          ),
        ],
      ),
    );
  }

  Widget serviceCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Container(
      width: 250,
      height: 150,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Image.asset(image, width: 100, height: 190),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


Widget serviceCard({required String image, required String title, required String description}) {
    return Container(
      width: 250,
      height: 150,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Image.asset(image, width: 100, height: 190),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

