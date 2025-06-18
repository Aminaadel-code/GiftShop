import 'package:flutter/material.dart';
import 'package:perfumes_shop/Model/items.dart';
import 'package:perfumes_shop/pages/lib/share/appBar.dart';
import 'package:provider/provider.dart';

import '../../Model/StorePage.dart';
import '../../Model/servicesPage.dart';
import '../../provider/cart.dart';
import '../DetailsPage.dart';
import '../Drawer.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(






     appBar: AppBar(
        backgroundColor: Colors.white,
       iconTheme: IconThemeData(color: Colors.black),
       elevation: 0,
       title: Text('Hi there, welcome!',
        style: TextStyle(
          color: Colors.black,
              fontSize: 22,
        ),),

        actions: [
          AppBarShare(),

        ],

      ),
      drawer: CustomDrawer(),

      body: SingleChildScrollView(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 36,),
              ServicesPage(),
SizedBox(height: 30,),
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Text('StoreName',style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 25
                       ),),
                       Icon(Icons.arrow_forward_ios,color: Colors.pink[100],),
                     ],
                   ),

                   TextButton(onPressed: (){}, child: Text('Show More',style: TextStyle(
                     color: Colors.pink[100],
                     decoration: TextDecoration.underline,
                     fontWeight: FontWeight.bold,

                   ),))
                 ],
               ),
             ),
             StorePage(),

           ],
         ),

SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('All Products',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),),
                              Icon(Icons.arrow_forward_ios,color: Colors.pink[100],),
                            ],
                          ),

                          TextButton(onPressed: (){}, child: Text('Show More',style: TextStyle(
                            color: Colors.pink[100],
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,

                          ),))
                        ],
                      ),
                    ),


                  ],
                ),

         Padding(
              padding: const EdgeInsets.only(top: 14),
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(Product: items[index]),

                        ),
                      );
                    },


                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    items[index].imgPath,
                                    width: double.infinity,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Consumer<Cart>(
                                builder: (context, Obj1, child) {
                                  return Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          Obj1.add(items[index]);
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),

                            ],
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$${items[index].price}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Expanded(
                                  child: Text(
                                    items[index].itemName,
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
         ],
          ),

        ),
    );

  }
}
