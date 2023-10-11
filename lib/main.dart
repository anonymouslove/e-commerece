import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'models/category_models.dart';
import 'components/horizontal.dart';
import 'components/products.dart';
import 'search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/cart.dart';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: HomePage(),
      )
  );}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
        elevation:0.0,
        backgroundColor: Colors.purple,
        title: const Text('Love Shop'),
        actions:<Widget>[
          IconButton(icon: const Icon(Icons.favorite, color :Colors.pink), onPressed: (){}),
          IconButton(icon:  const Icon(Icons.shopping_bag_outlined, color: Colors.white),
           onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> Cart()));}),
          
        ]
      ),
      body:Column(
        children: [
                      //*****container for search bar******* 
 const Search(),
                    //*****container for carousel******* 
          Container(
            height:180.0,
           child:CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Category.categories.map((category) => HeroCarouselCard(category: category)).toList(),
      )),

      //************padding widget
   const  Padding(padding: EdgeInsets.all(10.0),
    child: Text('Categories', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)
    ),
    ),
        const HorizontalList(),

   const  Padding(padding: EdgeInsets.all(10.0),
    child: Text('Recent Products', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
    ),
     Flexible(
    child: Products(),)
        ]
      ),
      drawer:  Drawer(
        
       child: ListView(
        
        children:
      
         <Widget>[
           UserAccountsDrawerHeader(
          accountName: const Text('Zendaya Coleman'), 
          accountEmail:const  Text('zendayacoleman@hotmail.com'),
          currentAccountPicture: GestureDetector(
            child: const  CircleAvatar(backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),)
          ),
          decoration: const  BoxDecoration(color: Colors.purple)
          ),
        
        //inkwell means that if you tap something is ging to happen
        InkWell(
          onTap:(){},
          child: const ListTile(
            title:  Text('Home Page'),
            leading: Icon(Icons.home, color:Colors.purple),
          
          ),
        ),

        InkWell(
          onTap:(){},
          child: const ListTile(
            title:  Text('My Account'),
            leading: Icon(Icons.person, color:Colors.purple),
          
          ),
        ),

        InkWell(
          onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> Cart()));},
          child: const ListTile(
            title:  Text('My Order(s)'),
            leading: Icon(Icons.shopping_bag, color:Colors.purple),
          
          ),
        ),

        InkWell(
          onTap:(){},
          child: const ListTile(
            title:  Text('Categories'),
            leading: Icon(Icons.dashboard, color:Colors.purple),
          
          ),
        ),

        InkWell(
          onTap:(){},
          child: const ListTile(
            title:  Text('Favourite'),
            leading: Icon(Icons.favorite, color:Colors.purple),
          
          ),
        ),

        const Divider(),

        const InkWell(
          onTap:null,
          child: ListTile(
            title:  Text('Settings'),
            leading: Icon(Icons.settings, color:Colors.grey),
          
          ),
        ),

       const  InkWell(
          onTap:null,
          child: ListTile(
            title:  Text('About'),
            leading: Icon(Icons.help, color:Colors.purple),
          
          ),
        )
        ],
        
       ),
        ),

        bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, 
        onTap: (index){}, 
        color:Colors.purple,
        items: [

         IconButton(icon:  const Icon(Icons.shopping_bag_outlined, color: Colors.white, size:30), 
         onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> Cart()));}),
          Icon(Icons.home, size:30, color: Colors.white,),

          Icon(Icons.list, size:30, color: Colors.white,),
        ]
       


      ),
      
    );
  }
}


class HeroCarouselCard extends StatelessWidget {
final Category category;
  const HeroCarouselCard({
    required this.category,
  });


  @override
  Widget build(BuildContext context) {
    return  Container(
         width:5000,
            margin:const  EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(category.image, fit: BoxFit.cover, width: 3000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration:const  BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding:const  EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          category.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );

  }
}
