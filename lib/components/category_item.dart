import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  String text;
  Color  color;
  Widget widget;
  BuildContext c;
   CategoryItem(this.text,this.color,this.widget,this.c, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (c)=>widget));
     },
     child: Container(
       alignment: Alignment.centerLeft,
       padding: const EdgeInsets.only(left: 20),
       width: double.infinity,
       height: 70,
       color: color,
       child:  Text(text,style: const TextStyle(color: Colors.white,fontSize: 22),),
     ),
   );
  }
}