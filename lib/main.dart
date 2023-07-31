import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        body:  GradientBackground(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
    elevation: 0,
      backgroundColor: const Color(0xFF8FE7CF),

      leadingWidth: 25, // Set the width for the menu icon
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black,),
        onPressed: () {
          // Add your menu icon's functionality here (e.g., open a drawer, show a menu, etc.)
        },
      ),
      title: const Text('Hi, BECKY ***', style: TextStyle(color: Colors.black),),

      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
         children:[
           IconButton(
           icon: const Icon(Icons.search, color: Colors.black),
           onPressed: () {
             // Add functionality for the search icon here
           },
         ),

           IconButton(
             icon: const Icon(Icons.money, color: Colors.black),
             onPressed: () {
               // Add functionality for the rate icon here
             },
           ),
           IconButton(
             icon: const Icon(Icons.notifications_active_outlined, color: Colors.black),
             onPressed: () {
               // Add functionality for the search icon here
             },
           ),

         ],

        ),
      ],
    );
  }
}


class GradientBackground extends StatelessWidget {
  const GradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF8FE7CF), Color(0xFF46D7B0)],
        ),
        borderRadius:  BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
       height: 300.0,
      // Specify your desired height here
      child: Column(
        children: const [
           Padding(
             padding: EdgeInsets.only(left: 10),
             child: Visibletoggle(),
           ),
        ],
      ),
    );
  }
}
 class Visibletoggle extends StatelessWidget {
   const Visibletoggle({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           children: const [
             Text('Balance (N)', style: TextStyle(color: Colors.black),),
             SizedBox(width: 10,),
             Icon(Icons.visibility_outlined, color: Colors.black,),
             SizedBox(width: 100,),
             Text('Commission'),

           ],

         ),
         // Add the text below "Balance (N)"
         Row(
           children:  [
        const  Text(
                 '***',
                 style: TextStyle(color: Colors.black, fontSize: 15),
               ),
           const Icon(Icons.arrow_forward_ios, size: 10,),
 const SizedBox(width: 180,),
             Container(
               width: 110,
               height: 25,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(
                   color: Colors.black,
                   width: 1.0
                 ),

               ),
               child: Row(
                 children: const [
                   Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('Activate'),
                   ),
                   Icon(Icons.add)
                 ],
               ),

             )
           ],
         ),
  const SizedBox(height: 15,),
Row(
  children:  [
    Container(
      width: 55,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
        child: Icon(Icons.download, color: Colors.white,),

    ),

    SizedBox(width: 50,),
    Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Icon(Icons.compare_arrows, color: Colors.white,) ),

SizedBox(width: 50,),

    Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Icon(FontAwesomeIcons.file, color: Colors.white,) ),

    SizedBox(width: 50,),

    Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Icon(FontAwesomeIcons.gift, color: Colors.white,)
    ),


  ],
),
        const SizedBox(height: 10,),
         Row(
           children: const [
             Text('Purchase', style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(width: 35,),
             Text('Transfer', style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(width: 30,),
             Text('Transaction', style: TextStyle(fontWeight: FontWeight.bold),),
             SizedBox(width: 40,),
             Text('Promo', style: TextStyle(fontWeight: FontWeight.bold),),
           ],
         )
       ],
     );

   }
 }
