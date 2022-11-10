import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../core/model.dart';


class FamilyMembersItem extends StatelessWidget{
  ItemModel model;
  FamilyMembersItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff527F30),
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC),
              height: 90,
              child: Image.asset(model.itemImage,)),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(model.japanName,style: const TextStyle(fontSize: 22),),
                Text(model.englishName,style: const TextStyle(fontSize: 22),),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: ()async{
              final AudioPlayer player=AudioPlayer();
              await player.play(AssetSource('assets/sounds/family_members/${model.itemSound}'));

            },
              icon:const Icon(Icons.play_circle,size: 35,color: Colors.black87,), ),
          ),
        ],
      ),


    );
  }

}