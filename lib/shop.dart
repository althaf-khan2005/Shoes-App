import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/cart_details.dart';
import 'package:my_project/modules/seemore.dart';
import 'package:my_project/shoe.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  void gestusercart(Shoes shoes){
    Provider.of<CartDetails>(context,listen: false,).addcart(shoes);

    // show dialog for the add in the cart

    showDialog(context: context,
     builder: (context)=> AlertDialog(
      title: Text("Successfully added "),
      content: Text("Check You Cart",
      style: GoogleFonts.abel(),),
      actions: [
       GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
         child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text("Ok",
          style: GoogleFonts.adamina(
            color: Colors.white,
          ),),
         ),
       ),
      ],
     ));

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartDetails>(builder: (context , value, child)=>
     Column(
      children: [
        // search bar

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),

        Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Every one Files ...some fly longer than other",
              style: GoogleFonts.taiHeritagePro(),
            )),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Pick",
                style: GoogleFonts.adamina(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Seemore()));
                },
                child: Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 20),

        Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: value.giveproduct().length,
                itemBuilder: (context, index) {
                 Shoes shoesProduct=value.giveproduct()[index];
                  return shoe(
                    shoes: shoesProduct,
                    ontap: () => gestusercart(shoesProduct),
                  );
                })
                ),


                Padding(
                  padding: EdgeInsets.only(top: 25.0,left: 25.0,right: 25.0),
                  child: Divider(
                  color: Colors.grey.shade300,
                  ),
                ),
      ],
    ),
    );
  }
}
