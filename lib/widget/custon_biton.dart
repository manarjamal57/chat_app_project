import 'package:flutter/material.dart';

class CustonBiton extends StatelessWidget {
 const   CustonBiton({super.key,required this.text,this.onTap});
   final String text ;
  final  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap,
      child: Container(width: double.infinity,
               height: 50,
                decoration: BoxDecoration(color: Colors.white,
               borderRadius: BorderRadius.circular(16),),
               child: Center(child: Text(text,style: TextStyle(fontSize: 20),),),),
    );
  }
}