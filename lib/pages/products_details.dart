import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';
//import 'package:icons_plus/icons_plus.dart';
import 'cart.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old;
  final product_detail_picture;

  const ProductDetails({
    required this.product_detail_name,
    required this.product_detail_price,
    required this.product_detail_old,
    required this.product_detail_picture,

  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color> Clrs =[
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.indigo,
    Colors.pink,
  ];
  int activeIndex=0;
  int quant =0;
  void minus(){
    setState((){
      quant --;
    });
  }

  void add(){
    setState((){
      quant ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
         elevation:0.0,
        backgroundColor: Colors.purple,
        title: const Text('Product'),
        actions:<Widget>[
          IconButton(icon:  const Icon(Icons.favorite, color: Colors.red), onPressed: (){}),

        ]
      ),

      body:  ListView(
      children: <Widget>[
        Container(
        height: 325.0,
       child: GridTile(
        child: Container(
          //color: Colors.white,
          child: Image.asset(widget.product_detail_picture)
        ),

        //arc
      
        /*footer: Container( color: Colors.white,
        child: ListTile(
         leading: Text(widget.product_detail_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize:16.0)),
         title: Row(children: <Widget>[
          Expanded(child: Text("\$${widget.product_detail_old}", style: TextStyle(color: Colors.black, decoration: TextDecoration.lineThrough)),),
          Expanded(child: Text("\$${widget.product_detail_price}", 
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)
          ),)
         ],)
         ),
          )*/
        )
       ),
      Arc(
        edge: Edge.TOP,
        arcType:ArcType.CONVEY,
        height: 30,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(padding:const  EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Padding(padding:const  EdgeInsets.only(
              top:50,
              bottom:20,
            ),
            child:Row(children: [
              Text(widget.product_detail_name,
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize:28.0)),
            ],)
            ),

            //**************ratings part******** */
             Padding(padding:EdgeInsets.only(top:1, bottom:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                initialRating:4,
                minRating:1,
                direction:Axis.horizontal,
                itemCount:5,
                itemSize:20,
                itemPadding:EdgeInsets.symmetric(horizontal:4),
                itemBuilder:( context, _)=>Icon(Icons.favorite, color: Colors.purple,),
                onRatingUpdate: (index){},
              ),


              Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset:Offset(0, 3),
                  )
               ] ),
               child: IconButton(icon: const Icon(Icons.add_circle_outline, color :Colors.purple, size:18), onPressed: (){add();}),

                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal:20),
                  child: Text("01", style: TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ))
                  ),

                 Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset:Offset(0, 3),
                  )
               ] ),
               child:IconButton(icon: const Icon(Icons.remove_circle_outline_outlined, color :Colors.purple, size:18), onPressed: (){minus();}), 

                 ),
              ],)
         
            ]) ,),
       

//**************description part******** */
      const  Padding(padding:EdgeInsets.symmetric(vertical: 12),
       child: Text("This is the description of the product  It talks about you and the product and how you work well together",
       textAlign: TextAlign.justify,
       style: TextStyle(fontSize:17,
       color: Colors.black,)
       )),


      //***********size of items */
        Padding(padding:EdgeInsets.symmetric(vertical: 8),
       child: Row(
       children:[ 
        Text("Size:",
       style: TextStyle(fontSize:20,
       color: Colors.black, fontWeight: FontWeight.bold)
       ),
       SizedBox( width:18,),
       Row(children: [
        for(int i=5; i<10; i++)
        Container(alignment: Alignment.center,
        height:30,
         width:30,
        margin:EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration( color: Colors.white, 
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color:Colors.grey.withOpacity(0.5),
          blurRadius: 8,
          spreadRadius:2,
          )
        ]),
        child:Text(i.toString(),style: TextStyle(fontSize:18,
       color: Colors.purple, fontWeight: FontWeight.bold))
        ),
       ],)
       ])),

      //***********color of items */
              Padding(padding:EdgeInsets.symmetric(vertical: 8),
       child: Row(
       children:[ 
        Text("Color:",
       style: TextStyle(fontSize:20,
       color: Colors.black, fontWeight: FontWeight.bold)
       ),
       SizedBox( width:10,),
       Row(children: [
        for(int i=0; i<5; i++)
        Container(alignment: Alignment.center,
        height:30,
         width:30,
        margin:EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration( color: Clrs[i], 
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color:Colors.grey.withOpacity(0.5),
          blurRadius: 8,
          spreadRadius:2,
          )
        ]),
        
        ),
       ],)
       ])),


          ],
          )),
        ),
      ),

    Container(
    height: 70,
    padding:EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration( color:Colors.white, 
        borderRadius: BorderRadius.circular(10),
       /* boxShadow: [
          BoxShadow(color:Colors.grey.withOpacity(0.5),
          blurRadius: 10,
          spreadRadius:3,
          offset: Offset(0,3),
          )
        ]*/),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("\$${widget.product_detail_old}", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough)),
        Text("\$${widget.product_detail_price}",style: TextStyle(color: Colors.red,fontSize: 25, fontWeight: FontWeight.bold,)),
       
      ],)
    ),

     Row(children: <Widget>[
     
       Expanded(
        // decoration: BoxDecoration( 
       // borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(onPressed:(){},
        color: Colors.purple,
        textColor: Colors.white,
        elevation:0.2,
        child:
          Text('Buy now'),
         
        )
       ),
      
      IconButton(icon: Icon(Icons.shopping_cart, color: Colors.purple), onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> Cart()));}, ),
      IconButton(icon: Icon(Icons.favorite_outline, color: Colors.purple), onPressed:(){}, )
      
      ]
      )
      ]),
      );
    
  }
}
