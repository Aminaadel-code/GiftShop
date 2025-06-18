import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  final List<Map<String, String>> stores = [
    {
      'image': 'assets/s1.png',
      'title': 'Golden Bow Gifts',
      'description': 'Riyadh, Street 31',
    },
    {
      'image': 'assets/s2.png',
      'title': 'Wrapped With Love',
      'description': 'Riyadh, Street 31',
    },
    {
      'image': 'assets/s3.png',
      'title': 'Bloom & Box',
      'description': 'Riyadh, Street 31',
    },
    {
      'image': 'assets/s3.png',
      'title': 'Grace & Wrap',
      'description': 'Riyadh, Street 31',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Services list
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: List.generate(stores.length, (index) {
              final store = stores[index];
              final isEven = index % 2 == 0;
              final bgColor = isEven
                  ? Colors.white!.withOpacity(0.3)
                  : Colors.white!.withOpacity(0.3);
              return StoreCard(
                image: store['image']!,
                title: store['title']!,
                description: store['description']!,
                bgColor: bgColor,
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget StoreCard({
    required String image,
    required String title,
    required String description,
    required Color bgColor,
  }) {
    return Container(
      width: 250,
      height: 170,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Row(
        children: [
          // Image with colored background
          Container(
            width: 90,
            height: 100,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.all(8),
            child: Image.asset(image),
          ),
          SizedBox(width: 12),
          // Text and icons
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Colors.redAccent, size: 30),
                    SizedBox(width: 10),
                    Icon(Icons.chat, color: Colors.pink[100], size: 30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
