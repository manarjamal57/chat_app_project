import 'package:flutter/material.dart';

class CustomTestFiled extends StatelessWidget {
  const   CustomTestFiled({super.key,this.hintText,this.onChanged,  this.obscureText=false});
 final    String ?hintText;
   final Function(String)? onChanged;
    final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data) {
        if (data!.isEmpty){
          return 'value is wrong';
        }
      },
      onChanged:onChanged ,
        style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
         hintStyle: TextStyle(color: Colors.white,fontSize: 20),
         filled: false,
    
          enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.white),
     ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, ),
        ),
      ),
    );
  }
}
