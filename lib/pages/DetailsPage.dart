import 'package:flutter/material.dart';
import 'package:perfumes_shop/Model/StarRating.dart';

import '../Model/items.dart';
import 'lib/share/appBar.dart';


class Details extends StatefulWidget {
  Item Product;
  Details ({required this.Product});
 // const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
   bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

        title: Text('Details',style: TextStyle(color: Colors.black),),
        actions: [
          AppBarShare(),
        ],


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.Product.imgPath,
              width: 510,
              height: 600,
              fit: BoxFit.cover,
            ),
            Text('${widget.Product.itemName}',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            Text('\$${widget.Product.price}',style: TextStyle(fontWeight: FontWeight.bold),),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'New',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 13),
                StarRating(rating: 4),

                SizedBox(width: 88),

                Row(
                  children: [
                    Icon(Icons.location_on_sharp, color: Colors.green),
                    SizedBox(width: 4),
                    Text(
                      'Flower Store',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ],
            ),
                  SizedBox(height: 18,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Details:',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 8),



      Text(
        'Blossom Bliss is a beautifully curated bouquet that brings joy and elegance to any space.\n'
            'Handpicked fresh flowers arranged with artistic care.\n'
            'Perfect for birthdays, anniversaries or simply brightening someone\'s day.\n'
            'Its vibrant colors and delicate fragrance create a warm uplifting ambiance.\n'
            'Wrapped in eco-friendly packaging with a touch of luxury.\n'
            'Designed to impress and express love, gratitude.',

      style: TextStyle(

      ),
        maxLines: isShowMore ?   3 : null,
        overflow: TextOverflow.fade,
      ),
      TextButton(
        onPressed: (){
          setState(() {
            isShowMore = !isShowMore;

          });


        }
        ,
        child: Center(
          child: Text(   isShowMore ? 'Show More' : 'Show less'

            ,style: TextStyle(
            color: Colors.blue
                ,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      )


    ],
                    ),
                  ),
          ],
        ),
      ),


    );
  }
}
