import 'package:flutter/material.dart';
import 'package:toku/screens/phrases/phrases_item.dart';
import '../../core/model.dart';

class PharsesScreen extends StatelessWidget{
  List<ItemModel> models=[
    ItemModel(japanName: "Burakku", englishName: "are you coming", itemImage: "", itemSound: 'number_one_sound.mp3'),
    ItemModel(japanName: "Chairo", englishName: "dont forget to subscribe", itemImage: "", itemSound: 'number_two_sound.mp3'),
    ItemModel(japanName: "Hokori ppoi kiiro", englishName: "how are you feeling", itemImage: "", itemSound: 'number_three_sound.mp3'),
    ItemModel(japanName: "Gure", englishName: "i love anime", itemImage: "", itemSound: 'number_four_sound.mp3'),
    ItemModel(japanName: "Midori", englishName: "i love programming", itemImage: "", itemSound: 'number_five_sound.mp3'),
    ItemModel(japanName: "Aka", englishName: "programming is easy", itemImage: "", itemSound: 'number_six_sound.mp3'),
    ItemModel(japanName: "Tksnc", englishName: "what is your name", itemImage: "", itemSound: 'number_seven_sound.mp3'),
    ItemModel(japanName: "Hokori", englishName: "where are you going?", itemImage: "", itemSound: 'number_eight_sound.mp3'),
    ItemModel(japanName: "Hokori", englishName: "yes im coming", itemImage: "", itemSound: 'number_eight_sound.mp3'),


  ];

  PharsesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Phrases"),
      ),
      body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>PhrasesItem(models[index]),
          separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
          itemCount: models.length),

    );
  }
}