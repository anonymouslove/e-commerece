import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      height: 70,
      padding: EdgeInsets.only(top:18),
      decoration: BoxDecoration(
        color :  Color(0xFFEDECF2),
        borderRadius: BorderRadius.only(
         topLeft: Radius.circular(35),
         topRight: Radius.circular(35)
         ),
      ),
      child: Column(children:<Widget> [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 40.0,
          decoration: BoxDecoration(
        color : Colors.white,
        borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left:5),
              height: 300,
              width:  300,
              child: TextFormField(decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Search here...",
              )),
            ),

          Spacer(),
           Icon(
           Icons.camera_alt, size:27, color: Color(0xFF4C53A5),
           ),

          ],
        )
          ),
          
      ],)
    );
  }
}