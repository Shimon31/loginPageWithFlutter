import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
     useMaterial3: false,
     ),
     home: LoginPage(),
     debugShowCheckedModeBanner: false,
   );
  }

}

