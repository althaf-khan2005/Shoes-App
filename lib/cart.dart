import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/cart_details.dart';
import 'package:my_project/cartitem.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartDetails>(builder:(context,value ,child)=>Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text("My Cart",
          style: GoogleFonts.adamina(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
        ),
        
        SizedBox(height: 10),

        Expanded(child: value.usercart().isEmpty
        ? Center(
          child: Text("Cart is empty...",
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.bold,
          ),),
        )

       : ListView.builder(
          itemCount: value.usercart().length,
          itemBuilder: (context, index){
          Shoes indvidual=value.usercart() [index];
          return Cartitem(
            shoes: indvidual,
          );
        }))
      ],
    ), );
  }
}