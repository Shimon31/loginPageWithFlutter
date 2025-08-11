import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_flutter/widgets/Custom%20TextFile.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text("Jewel Ghor",
                style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold,),),
              SizedBox(height: 50,),

              CustomTextField(emailController,hintText: "Enter Your Email",prefixWidget: Icon(Icons.email_outlined),),
              SizedBox(height: 20,),
              CustomTextField(passController, hintText: "Enter Your Password",prefixWidget: Icon(Icons.lock),)



            ],

          ),
        ),
      ),


    );
  }

}