import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/cart_details.dart';
import 'package:provider/provider.dart';

class ShoeViewer extends StatefulWidget {
  final Shoes shoes;

  const ShoeViewer({
    super.key,
    required this.shoes,
  });

  @override
  State<ShoeViewer> createState() => _ShoeViewerState();
}

class _ShoeViewerState extends State<ShoeViewer> {

  bool islikeds=false;


  void gestusercart(Shoes shoes) {
    Provider.of<CartDetails>(context, listen: false).addcart(widget.shoes);

    // show snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Successfully added to the Cart",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.fixed,
        backgroundColor: Colors.grey.shade200,
        action:SnackBarAction(label: "Ok",
        textColor: Colors.lightBlue,
         onPressed: (){

        }),
      ),
    );
  }

  void hearltiked(Shoes shoes) {
   setState(() {
      shoes.isLiked =! shoes.isLiked;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Consumer<CartDetails>(
          builder: (context, value, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: widget.shoes.imagepath,
                child: Image.asset(
                  widget.shoes.imagepath,
                  width: 400,
                  height: 400,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  widget.shoes.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "\$" + widget.shoes.price,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.shoes.desperction,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap:()=> hearltiked(widget.shoes),
                      child: Icon(
                        widget.shoes.isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: widget.shoes.isLiked
                            ? Colors.red
                            : Colors.grey,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    gestusercart(widget.shoes);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),

    SafeArea(
      child: Opacity(
        opacity: 0.6,
        child: Container(
          margin: EdgeInsets.only(left: 25,),
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: (){
              Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new_rounded,
          color: Colors.white,))
        ),
      ),
    ),
      ],
    );
  }
}
