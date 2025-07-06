import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';

class CartDetails extends ChangeNotifier {
// item to sale and visble in the ui

  List<Shoes> item = [

    Shoes(
        desperction:
            "Lightweight sneakers ideal for walking and running ",
        imagepath: "lib/image/blue.webp",
        name: "Nike Air Force",
        price: "120"
        ),

    Shoes(
        desperction: "Perfect for everyday walks and workouts",
        imagepath: "lib/image/orange.png",
        name: "Adidas",
        price: "220"
        ),

    Shoes(
        desperction:"Comfortable, stylish, and made for all-day wear.",
        imagepath: "lib/image/light blue.webp",
        name: "Puma RS-X",
        price: "520"
        ),

         Shoes(
        desperction: "Designed for performance and street style",
        imagepath: "lib/image/nike.png",
        name: "Nike Air Max",
        price: "129"
        ),

          Shoes(
        desperction: "Lightweight sneakers ideal for walking and running.",
        imagepath: "lib/image/whites.png",
        name: "Sneakers",
        price: "60"
        ),

          Shoes(
        desperction: "Classic design with modern comfort ",
        imagepath: "lib/image/blue.webp",
        name: "Walkers",
        price: "12"
        ),

        Shoes(
        desperction: "Built to support your steps from gym to street ",
        imagepath: "lib/image/light blue.webp",
        name: "Vans Old Skool",
        price: "30"
        ),

        
         Shoes(
        desperction: "Designed for performance and street style",
        imagepath: "lib/image/nike.png",
        name: "Adidas Harden",
        price: "129"
        ),

        
        Shoes(
        desperction: "Built to support your steps from gym to street ",
        imagepath: "lib/image/light blue.webp",
        name: "Adidas Superstar",
        price: "30"
        ),
  ];
  

// user add the product save in the cart

  List<Shoes> add = [];

// user can add the product

  List<Shoes> giveproduct() {
    return item;
  }

//user add the item to cart

  List<Shoes> usercart() {
    return add;
  }

//user add the product in cart

  void addcart(Shoes shoes) {
    add.add(shoes);
    notifyListeners();
  }

// user can remove the item

  void remove(Shoes shoes) {
    add.remove(shoes);
    notifyListeners();
  }
}
