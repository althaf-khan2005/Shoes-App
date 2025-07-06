import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/cart.dart';
import 'package:my_project/gnav.dart';
import 'package:my_project/shop.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int selectedindex=0;

  void bottomchnage(int index){
     setState(() {
       selectedindex=index;
     });
  }

  List<Widget> pages=[
     Shop(),

     Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
    
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context)=>
        IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu),
        ),),
      ),
        drawer: Drawer(
          backgroundColor: Colors.grey.shade900,
          child: Column(
            
            children: [

            DrawerHeader(
              child: 
              Icon(Icons.shopping_bag_outlined,
              size: 80,
              color: Colors.white,
              ),
            ),

            SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
              
                    ListTile(
                      leading: Icon(Icons.person_4_outlined,
                      color: Colors.white,),
                      title: Text("Person",
                      style: GoogleFonts.gafata(
                        fontSize:20, 
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onTap: () => (),
                    ),
              
                 ListTile(
                    leading: Icon(Icons.info,
                    color: Colors.white,),
                    title: Text("About",
                    style: GoogleFonts.gafata(
                      fontSize:20, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    onTap: () => (),
                  ),

                    ListTile(
                    leading: Icon(Icons.logout,
                    color: Colors.white,),
                    title: Text("Logout",
                    style: GoogleFonts.gafata(
                      fontSize:20, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    onTap: () => (),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),

      bottomNavigationBar: gnav(
        ontap: (index)=>bottomchnage(index),
      ),
      body: pages[selectedindex],
     
    );
  
  }
}