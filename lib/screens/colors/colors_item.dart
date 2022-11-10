import 'package:flutter/material.dart';

import '../../core/model.dart';


class ColorsItem extends StatelessWidget{
  ItemModel model;
  ColorsItem(this.model);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff793FA0),
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
            child: IconButton(onPressed: (){

            },
              icon:const Icon(Icons.play_circle,size: 35,color: Colors.black87,), ),
          ),
        ],
      ),


    );
  }

}