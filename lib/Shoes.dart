class Shoes {

  final String name;
  final String desperction;
  final String imagepath;
  final String price;
  bool isLiked; 
  int likecount;



   Shoes({
    required this.desperction,
    required this.imagepath,
    required this.name,
    required this.price,
    this.isLiked=false,
    this.likecount=0,
   });
  
}