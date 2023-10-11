import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection:Axis.horizontal ,
        children: <Widget> [
        Categories(image_location: 'images/cats/tshirt.png',
          image_caption: 'Shirts',
          ),

           Categories(image_location: 'images/cats/dress.png',
          image_caption: 'Dress',),

           Categories(image_location: 'images/cats/jeans.png',
          image_caption: 'Jeans',),

           Categories(image_location: 'images/cats/formal.png',
          image_caption: 'Formal',),

           Categories(image_location: 'images/cats/informal.png',
          image_caption: 'Informal',),

           Categories(image_location: 'images/cats/shoe.png',
          image_caption: 'Shoe',),

           Categories(image_location: 'images/cats/accessories.png',
          image_caption: 'Accessories',)

        ])
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
   Categories({
   required this.image_location,
   required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
    child:Container(
      width:100.0,
      child: ListTile(
        title: Image.asset(image_location, width: 100.0, height: 25.0, color: Colors.purple),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: TextStyle(color:Colors.black87,)) ,
    
        ),
    ))));
  }
}