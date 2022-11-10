import 'package:flutter/material.dart';
import 'package:toku/screens/colors/colors_screen.dart';
import 'package:toku/screens/family_members/family_members_screen.dart';
import 'package:toku/screens/numbers/numbers_screen.dart';
import 'package:toku/screens/phrases/phrases_screen.dart';

import '../components/category_item.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Toku"),
      ),
      body:Column(
        children: [
          CategoryItem("Numbers",const Color(0xffF8942F),NumbersScreen(),context),
          CategoryItem("Family Members",const Color(0xff527F30),FamilyMembersScreen(),context),
          CategoryItem("Colors",const Color(0xff793FA0),ColorsScreen(),context),
          CategoryItem("Phrases",const Color(0xff46A4C9),PharsesScreen(),context),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 70,
          //   color:const Color(0xffF8942F),
          //   child: const Text("Numbers",style: TextStyle(color: Colors.white,fontSize: 22),),
          // ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 70,
          //   color:const Color(0xff527F30),
          //   child: const Text("Family Members",style: TextStyle(color: Colors.white,fontSize: 22),),
          // ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 70,
          //   color:const Color(0xff793FA0),
          //   child: const Text("Colors",style: TextStyle(color: Colors.white,fontSize: 22),),
          // ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   padding: const EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 70,
          //   color:const Color(0xff46A4C9),
          //   child: const Text("Phrases",
          //     style: TextStyle(color: Colors.white,fontSize: 22),),
          // ),
        ],
      ),
    );
  }
}