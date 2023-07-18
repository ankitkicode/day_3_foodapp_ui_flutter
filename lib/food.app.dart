// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:day_3_foodapp_ui/fadeanimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FoodApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/logo.jpeg",),fit: BoxFit.cover
            ),
            color: Color.fromARGB(255, 204, 188, 41)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Taking Order For Deloivery",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: 2,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "See resturants nearby by \nadding location",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2,
                      height: 1.5,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 228, 123, 24),
                      Color.fromARGB(255, 226, 139, 8)
                    ]),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                   onPressed: (){
                   Navigator.push(context, PageRouteBuilder( 
                    transitionDuration: Duration(milliseconds: 1500),
                    transitionsBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation,Widget child) {
                    animation =CurvedAnimation(parent: animation, curve: Curves.elasticInOut);

                      return ScaleTransition(
                        alignment: Alignment.bottomRight,
                        scale: animation,
                        child: child,
                        
                        );
                    } , 
                    
                    
                    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                      return FadeAnimation();}));
                    
                   
                 
                   },
                    child: Text(
                      "Let's Start ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Text(
                    "Now delivery To your .Door 24/7",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
