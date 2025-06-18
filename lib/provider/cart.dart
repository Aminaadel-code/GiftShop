import 'package:flutter/material.dart';
import 'package:perfumes_shop/Model/items.dart';

class Cart with ChangeNotifier{
 List SelectedPro =[];


 int Price =0;
 add(Item Product){
   SelectedPro.add(Product);

   Price += Product.price.round();
   notifyListeners();
 }
 Delete(Item Product){
   SelectedPro.remove(Product);

   Price -= Product.price.round();
   notifyListeners();
 }

  
}