import 'package:flutter/material.dart';
import 'package:my_project/Shoes.dart';
import 'package:my_project/cart_details.dart';
import 'package:my_project/modules/seemore_tiles.dart';
import 'package:provider/provider.dart';

class Seemore extends StatefulWidget {
  const Seemore({super.key});

  @override
  State<Seemore> createState() => _SeemoreState();
}

class _SeemoreState extends State<Seemore> {

  bool isliked=false;
  final text = TextEditingController();

  @override
  void initState() {
    super.initState();
    text.addListener(() {
      setState(() {});
    });
  }

  void clear() {
    text.clear();
  }

  void tollgate(Shoes shoes){
   setState(() {
      shoes.isLiked=!shoes.isLiked;

      if(shoes.isLiked){
        shoes.likecount++;
      }
      else{
        shoes.likecount--;
      }
   });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<CartDetails>(
        builder: (context, value, child) => Column(
          children: [
            SizedBox(height: 10),

            // search bar

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Search..",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.only(top: 12, left: 10),
                    suffixIcon: text.text.isEmpty
                        ? Icon(Icons.search_off_rounded)
                        : GestureDetector(
                            onTap: clear,
                            child: Icon(Icons.cancel),
                          ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
                           
   Expanded(
  child: Builder(
    builder: (context) {
      List<Shoes> filteredShoes = value.giveproduct().where((shoe) {
        final query = text.text.toLowerCase();
        return shoe.name.toLowerCase().contains(query);
      }).toList();

      if (filteredShoes.isEmpty) {
        return const Center(
          child: Text(
            "No item is found...",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }

      //  return GridView
      return GridView.builder(
        shrinkWrap: true,
        padding:  EdgeInsets.symmetric(horizontal: 10),
        itemCount: filteredShoes.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
          childAspectRatio: 0.59,
        ),
        itemBuilder: (context, index) {
          Shoes product = filteredShoes[index];
          return SeemoreTiles(
            product: product,
            isliked: product.isLiked,
            onTap: ()=>tollgate(product),
          );
        },
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
