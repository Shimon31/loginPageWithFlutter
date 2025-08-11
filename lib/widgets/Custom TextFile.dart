import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField(TextEditingController emailController, {super.key, required this.hintText, this.prefixWidget});

  final TextEditingController controller = TextEditingController();
  final String hintText;
  final Widget? prefixWidget ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      style: TextStyle(
          fontSize: 20,
          color: Colors.black
      ),
      controller: controller,
      decoration: InputDecoration(

          hintText:hintText ,
          fillColor: Colors.grey[50],
          filled: true,
          prefixIcon: prefixWidget,

          enabledBorder: OutlineInputBorder(


          ),
          hintStyle: TextStyle(
            color: Colors.black54,
            fontSize: 20,
          ),
          focusedBorder: OutlineInputBorder()
      ),
    );
  }
}
