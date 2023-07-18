// ignore_for_file: unused_local_variable, unused_import, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:day_3_foodapp_ui/food.app.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({super.key});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: null,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Delivery",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[80]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        height: 50,
                        // scrollDirection: Axis.horizontal,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            MakeCategary(isActive: true, title: "Pizza"),
                            MakeCategary(isActive: false, title: "Burgers"),
                            MakeCategary(isActive: false, title: "Kebab"),
                            MakeCategary(isActive: false, title: "Desert"),
                            MakeCategary(isActive: false, title: "Salad"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Free Delivery",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                        child: Container(
                          height: 500,
                           width: 550,
                         
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Makelist("asset/logo.jpeg"),
                              Makelist("asset/one.jpeg"),
                              Makelist("asset/two.jpeg"),
                              Makelist("asset/three.jpeg"),

                        
                            ],
                          ),
                        ),
                        ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
Widget MakeCategary({isActive, title}) {
  return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive
              ? Color.fromARGB(255, 248, 173, 33)
              : Color.fromARGB(255, 230, 227, 227),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color:
                    isActive ? Colors.white : Color.fromARGB(255, 46, 45, 45),
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ),
      ));
}


Widget Makelist(image){
  return AspectRatio(

  aspectRatio: 1/1.4,
  child: GestureDetector(
    
    child: Container(
       margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:DecorationImage(image: AssetImage(image,),fit: BoxFit.cover)  
      ),
    ),
  ),
);
} 