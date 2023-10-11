import 'package:flutter/material.dart';
import 'package:love_shop/components/cart_products.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}
class _CartState extends State<Cart> {
  var shipping ="10";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
        elevation:0.0,
        backgroundColor: Colors.purple,
        title: const Text('Cart'),
        actions:<Widget>[
          IconButton(icon: const Icon(Icons.favorite, color :Colors.pink), onPressed: (){}),]),
      body:CartProduct(),
            bottomNavigationBar:Container(
        color:  Color(0xFFEDECF2),
          padding:  EdgeInsets.symmetric(horizontal:20, vertical:15), 
          height:320,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price list", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
               Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub Total', style:TextStyle(color:Colors.black, fontSize:16,)),           
               Text("\$1000", style:TextStyle(color:Colors.purple, fontSize:22, fontWeight:FontWeight.bold)),                
            ],),
             Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping', style:TextStyle( fontSize:16, fontWeight:FontWeight.bold)),
              Spacer(),
               Text('\$$shipping', style:TextStyle(color:Colors.purple, fontSize:22, fontWeight:FontWeight.bold)),   
            ],),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [            
              Text('Total', style:TextStyle(color:Colors.purple, fontSize:22, fontWeight:FontWeight.bold)),
              Spacer(),
               Text('Total', style:TextStyle(color:Colors.purple, fontSize:22, fontWeight:FontWeight.bold)),                
            ],),
Container(height:50,
            width:300,
            alignment: Alignment.center,
            decoration:BoxDecoration(color:Colors.purple,
                   borderRadius: BorderRadius.circular(20)),
                   child:Text('Check Out', style:TextStyle(color:Colors.white, fontSize:25, fontWeight:FontWeight.bold),
           ) ),
          ],)
        ),
        );
  }
}