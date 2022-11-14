 import 'package:flutter/material.dart';
import 'package:travel_app/app_style.dart';
import 'defaults.dart';
import 'home_screen.dart';


class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);


   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   var indexClicked=0;
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: klightWhite,
         body: HomeScreen(),

       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         backgroundColor: klightWhite,
         selectedItemColor: kdarkBlue,
         unselectedItemColor: kGrey,
         currentIndex: indexClicked,
         onTap: (value){
           setState(() {
             indexClicked=value;
           });
         },
         items: [
           BottomNavigationBarItem(
               icon: Icon(
                 Defaults.bottomNavItemIcon[0],

               ),
             label: Defaults.bottomNavItemText[0],

           ),
           BottomNavigationBarItem(
             icon: Icon(
               Defaults.bottomNavItemIcon[1],

             ),
             label: Defaults.bottomNavItemText[1],

           ),
           BottomNavigationBarItem(
             icon: Icon(
               Defaults.bottomNavItemIcon[2],

             ),
             label: Defaults.bottomNavItemText[2],

           ),
           BottomNavigationBarItem(
             icon: Icon(
               Defaults.bottomNavItemIcon[3],

             ),
             label: Defaults.bottomNavItemText[3],

           )




         ],
       ),
       ),
     );
   }
 }
