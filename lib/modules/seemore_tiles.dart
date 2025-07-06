import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/modules/3d.dart';

class SeemoreTiles extends StatelessWidget {
  final Shoes product; 
  final void Function() ?onTap;
  final bool isliked;


  const SeemoreTiles ({super.key, required this.product,
  required this.isliked,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
      //  mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 7),
          //  Image
          GestureDetector(
            onTap: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>ThreeDModel()));
            },
            child: Image.asset(
              product.imagepath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 15),

          //  Name
          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          const SizedBox(height: 9),

            Text(
            product.desperction,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13,
            color: Colors.grey),
          ),

          const SizedBox(height: 15),


          //  Price
          Text(
            '\$${product.price}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),

         Spacer(),

          //  Like Button + Count
          Row(
           
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              SizedBox(width: 4),
              GestureDetector(
                onTap: onTap,
                child: Icon(
                  product.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: product.isLiked ? const Color.fromARGB(255, 8, 230, 15): Colors.grey,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),

          );
    
    
  
  }
}
