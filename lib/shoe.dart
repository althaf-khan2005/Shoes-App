import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/modules/shoespage.dart';

class shoe extends StatefulWidget {
  Shoes shoes;
  final void Function()? ontap;

  shoe({
    super.key,
    required this.shoes,
    required this.ontap,
  });

  @override
  State<shoe> createState() => _shoeState();
}

class _shoeState extends State<shoe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      width: 280,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 0),

          // image of the product

          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoeViewer(
                                shoes: widget.shoes,
                              ))),
                },
                child: Hero(
                  tag: widget.shoes.imagepath,
                  child: Image.asset(
                    widget.shoes.imagepath,
                    fit: BoxFit.cover,
                  ),
                ),
              )),

          // the desperction

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(widget.shoes.desperction)),

          // the price

          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.shoes.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text("\$${widget.shoes.price}"),
                  ],
                ),
                GestureDetector(
                  onTap: widget.ontap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
