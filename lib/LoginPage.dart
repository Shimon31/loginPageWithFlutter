import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_flutter/widgets/Custom%20TextFile.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Jewel Ghor",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),

              CustomTextField(
                emailController,
                hintText: "Enter Your Email",
                prefixWidget: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 20),
              CustomTextField(
                passController,
                hintText: "Enter Your Password",
                prefixWidget: Icon(Icons.lock),
                obscureText: true,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Forget Password"),
                        content: Text("Do u want to Reset Your Password"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Cancel"),
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Reset"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  if (emailController.text.trim() == "s" &&
                      passController.text.trim() == "1234") {
                    debugPrint(
                      "Login Successful $emailController and $passController",
                    );
                  } else {
                    debugPrint(
                      "Login Failed $emailController and $passController",
                    );
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Create New Account",style: TextStyle(color: Colors.green),)
            ],
          ),
        ),
      ),
    );
  }
}
