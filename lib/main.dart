import 'package:ecommurce/view/Screens/LoginPage.dart';
import 'package:ecommurce/view/Screens/SingUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/singup",
      getPages: [
        GetPage(name: "/Login", page: ()=>LoginPage()),
        GetPage(name: "/singup", page:()=>SingUp())
      ],
      
    );
    
  }
}

