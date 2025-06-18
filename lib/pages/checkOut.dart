import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/cart.dart';
import 'lib/share/appBar.dart';
import 'package:dotted_border/dotted_border.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

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
        title: Text('CheckOut', style: TextStyle(color: Colors.black)),
        actions: [
          AppBarShare(),
        ],
      ),
      body: Consumer<Cart>(
        builder: (context, Obj3, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Text('My Cart',style: TextStyle(fontSize: 20),),

                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Obj3.SelectedPro.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text("${Obj3.SelectedPro[index].price}"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: AssetImage(Obj3.SelectedPro[index].imgPath),
                        ),
                        title: Text(Obj3.SelectedPro[index].itemName),
                        trailing: IconButton(
                          onPressed: () {
                            Obj3.Delete(Obj3.SelectedPro[index]);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // ⭐ مستطيل إدخال القسيمة + زر Apply
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: DottedBorder(
                        color: Colors.pink.shade300,
                        strokeWidth: 1.5,
                        dashPattern: [6, 4], // طول الخط والمسافة
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          height: 50,
                          child: Row(
                            children: [
                              Icon(Icons.local_offer, color: Colors.pink[300]),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Add coupon',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // منطق تطبيق القسيمة
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      ),
                      child: Text(
                        'Apply',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              // زر الدفع
              SizedBox(
                width: double.infinity,
                child: Padding(

                  padding: const EdgeInsets.all(5.0),

                  child: ElevatedButton(
                    onPressed: () {
                      // تنفيذ الدفع هنا
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                        style: TextStyle(color: Colors.grey,
                        fontSize: 24),),
                        Text(
                          " \$${Obj3.Price}",
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              SizedBox(height: 44,),
              SizedBox(
                //width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(77),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 18),
                  ),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.black,fontSize: 23),
                  ),
                ),
              ),

              SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
