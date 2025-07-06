import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/cart_details.dart';
import 'package:my_project/modules/shoespage.dart';
import 'package:provider/provider.dart';

class Cartitem extends StatefulWidget {
  Shoes shoes;

   Cartitem({super.key,
  required this.shoes,
  });

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {

  void delete(){
    Provider.of<CartDetails>(context,listen: false).remove(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          
        ),
         margin: EdgeInsets.only(top: 10),
        child: ListTile(
          leading: Hero(
            tag: widget.shoes.imagepath,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoeViewer(shoes: widget.shoes)));
              },
              child: Image.asset(widget.shoes.imagepath))),
          title: Text(widget.shoes.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Text("\$${widget.shoes.price}",
          style: TextStyle(
            color: Colors.grey,
          ),),
          trailing: GestureDetector(
            onTap: delete,
            child: Icon(Icons.delete),
          ),
           
            ),
        ),
      
    );
    
  }
}