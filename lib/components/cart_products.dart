import 'package:flutter/material.dart';
class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  State<CartProduct> createState() => CartProductState();
}

class CartProductState extends State<CartProduct> {
  var product_on_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size":" Size:m",
      "color":"Blue",
      "qty":20,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 85,
       "size":"size:xl",
      "color": "Red",
      "qty":20,
    },
    /*{
      "name": "Blazer for Ladies",
      "picture":"images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },*/
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:product_on_cart.length,
      itemBuilder: (context, index){
        return Single_cart(
         cart_name: product_on_cart[index]['name'],
          cart_picture: product_on_cart[index]['picture'],
          cart_price:product_on_cart[index]['price'],
          cart_size: product_on_cart[index]['size'],
          cart_color: product_on_cart[index]['color'],
          cart_qty: product_on_cart[index]['qty'],
        );

      },
    );
  }
}

class Single_cart extends StatefulWidget {
  final cart_name;
  final cart_picture;
  final cart_price;
  final cart_size;
  final cart_color;
  final cart_qty;
  const Single_cart({
     
    this.cart_name, this.cart_picture, this.cart_price, this.cart_size, this.cart_color, this.cart_qty});

  @override
  State<Single_cart> createState() => _Single_cartState();
}

class _Single_cartState extends State<Single_cart> {
   int quant =0;

  void minus(){
    setState((){
     
      quant--;
    });
  }

  void add(){
    setState((){
    if(quant<=9){
      quant++;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Padding(padding: EdgeInsets.all(5)),
        Container(
          height: 230,
          color:Color(0xFFEDECF2),
          child:Row(children: [
          Container(
           width:180, 
            decoration:BoxDecoration(color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(15.0),

           child:Image.asset(widget.cart_picture, fit: BoxFit.fill,)),
          Column(

            children: [
              Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:30)),
            Text(widget.cart_name ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          Text(' '),
        /*  RichText(
          text: 
          TextSpan(
              text: 'Size: M',
              style: TextStyle(color:Colors.grey, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () { onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Products()));}
                ),),*/

           Text(widget.cart_size,style: TextStyle(color:Colors.grey,fontSize: 18)),
            Text(' '),
            Text('1000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color:Colors.purple)),
            Text(' '),
            Text('Color:'+ widget.cart_color, style: TextStyle(fontSize: 18)),
            Row(
            children:[
            Padding(padding:EdgeInsets.symmetric(vertical: 30, ),),
              Container(
            
               child: IconButton(icon: const Icon(Icons.add_circle_outline, color :Colors.purple, size:25), onPressed: (){add();}),

                ),

                Container(
                   alignment: Alignment.bottomRight,
                  margin: EdgeInsets.symmetric(horizontal:20),
                  child: Text("$quant", style: TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ))
                  ),

                 Container(
                 
               child:IconButton(icon: const Icon(Icons.remove_circle_outline_outlined, color :Colors.purple, size:25), onPressed: (){minus();}), 
             ),
             
             

                  

                // IconButton(icon: const Icon(Icons.add_circle_outline, color :Colors.purple, size:18)),
            
              ],),
          ],)
        ]),)
      ]
      );

  }
}