import 'package:flutter/material.dart';

import '../../core/model.dart';


class NumbersItem extends StatelessWidget{
  ItemModel model;
  NumbersItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8942F),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(model.japanName,style: const TextStyle(fontSize: 22),),
                Text(model.englishName,style: const TextStyle(fontSize: 22),),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){

              //  AudioCache player=AudioCache(prefix: 'assets/sounds/numbers/');
              // player.play(model.numberSound);
               // final assetsAudioPlayer = AssetsAudioPlayer();
              //
              //  assetsAudioPlayer.open(
              //    Audio("assets/audios/song1.mp3"),
              //  );
            },
                icon:const Icon(Icons.play_circle,size: 35,color: Colors.black87,), ),
          ),
        ],
      ),


    );
  }

}