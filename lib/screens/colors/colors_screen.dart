import 'package:flutter/material.dart';
import 'package:toku/screens/colors/colors_item.dart';
import '../../core/model.dart';

class ColorsScreen extends StatelessWidget{
  List<ItemModel> models=[
    ItemModel(japanName: "Burakku", englishName: "black", itemImage: "assets/images/colors/color_black.png", itemSound: 'black.wav'),
    ItemModel(japanName: "Chairo", englishName: "brown", itemImage: "assets/images/colors/color_brown.png", itemSound: 'brown.wav'),
    ItemModel(japanName: "Hokori ppoi kiiro", englishName: "dusty yellow", itemImage: "assets/images/colors/color_dusty_yellow.png", itemSound: 'dusty yellow.wav'),
    ItemModel(japanName: "Gure", englishName: "gray", itemImage: "assets/images/colors/color_gray.png", itemSound: 'gray.wav'),
    ItemModel(japanName: "Midori", englishName: "green", itemImage: "assets/images/colors/color_green.png", itemSound: 'green.wav'),
    ItemModel(japanName: "Aka", englishName: "red", itemImage: "assets/images/colors/color_red.png", itemSound: 'red.wav'),
    ItemModel(japanName: "Tksnc", englishName: "white", itemImage: "assets/images/colors/color_white.png", itemSound: 'white.wav'),
    ItemModel(japanName: "Hokori", englishName: "yellow", itemImage: "assets/images/colors/yellow.png", itemSound: 'yellow.wav'),

  ];

  ColorsScreen({Key? key}) : super(key: key);
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
          itemBuilder: (context,index)=>ColorsItem(models[index]),
          separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
          itemCount: models.length),

    );
  }
}