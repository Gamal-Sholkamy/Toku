import 'package:flutter/material.dart';
import 'package:toku/screens/numbers/numbers_item.dart';

import '../../core/model.dart';

class NumbersScreen extends StatelessWidget{
List<ItemModel> models=[
  ItemModel(japanName: "Icih", englishName: "one", itemImage: "assets/images/numbers/number_one.png", itemSound: 'number_one_sound.mp3'),
  ItemModel(japanName: "Ni", englishName: "tow", itemImage: "assets/images/numbers/number_two.png", itemSound: 'number_two_sound.mp3'),
  ItemModel(japanName: "San", englishName: "three", itemImage: "assets/images/numbers/number_three.png", itemSound: 'number_three_sound.mp3'),
  ItemModel(japanName: "Shi", englishName: "four", itemImage: "assets/images/numbers/number_four.png", itemSound: 'number_four_sound.mp3'),
  ItemModel(japanName: "Go", englishName: "five", itemImage: "assets/images/numbers/number_five.png", itemSound: 'number_five_sound.mp3'),
  ItemModel(japanName: "Roku", englishName: "sex", itemImage: "assets/images/numbers/number_six.png", itemSound: 'number_six_sound.mp3'),
  ItemModel(japanName: "Sebun", englishName: "seven", itemImage: "assets/images/numbers/number_seven.png", itemSound: 'number_seven_sound.mp3'),
  ItemModel(japanName: "Hachi", englishName: "eight", itemImage: "assets/images/numbers/number_eight.png", itemSound: 'number_eight_sound.mp3'),
  ItemModel(japanName: "Kyu", englishName: "nine", itemImage: "assets/images/numbers/number_nine.png", itemSound: 'number_nine_sound.mp3'),
  ItemModel(japanName: "Ju", englishName: "ten", itemImage: "assets/images/numbers/number_ten.png", itemSound: 'number_ten_sound.mp3'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Numbers"),
      ),
      body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>NumbersItem(models[index]),
          separatorBuilder: (context,index)=>Container(height: 1,color: Colors.grey,),
          itemCount: models.length),

    );
  }
}