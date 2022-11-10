import 'package:flutter/material.dart';
import 'package:toku/screens/family_members/family_members_item.dart';

import '../../core/model.dart';

class FamilyMembersScreen extends StatelessWidget{
  List<ItemModel> models=[
    ItemModel(japanName: "Icih", englishName: "father", itemImage: "assets/images/family_members/family_father.png", itemSound: 'number_one_sound.mp3'),
    ItemModel(japanName: "Ni", englishName: "daughter", itemImage: "assets/images/family_members/family_daughter.png", itemSound: 'number_two_sound.mp3'),
    ItemModel(japanName: "San", englishName: "grandfather", itemImage: "assets/images/family_members/family_grandfather.png", itemSound: 'number_three_sound.mp3'),
    ItemModel(japanName: "Shi", englishName: "mother", itemImage: "assets/images/family_members/family_mother.png", itemSound: 'number_four_sound.mp3'),
    ItemModel(japanName: "Go", englishName: "grand mother", itemImage: "assets/images/family_members/family_grandmother.png", itemSound: 'number_five_sound.mp3'),
    ItemModel(japanName: "Roku", englishName: "older brother", itemImage: "assets/images/family_members/family_older_brother.png", itemSound: 'number_six_sound.mp3'),
    ItemModel(japanName: "Sebun", englishName: "older sister", itemImage: "assets/images/family_members/family_older_sister.png", itemSound: 'number_seven_sound.mp3'),
    ItemModel(japanName: "Hachi", englishName: "son", itemImage: "assets/images/family_members/family_son.png", itemSound: 'number_eight_sound.mp3'),
    ItemModel(japanName: "Kyu", englishName: "younger brother", itemImage: "assets/images/family_members/family_younger_brother.png", itemSound: 'number_nine_sound.mp3'),
    ItemModel(japanName: "Ju", englishName: "younger sister", itemImage: "assets/images/family_members/family_younger_sister.png", itemSound: 'number_ten_sound.mp3'),

  ];

  FamilyMembersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Family Members"),
      ),
      body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>FamilyMembersItem(models[index]),
          separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
          itemCount: models.length),

    );
  }
}