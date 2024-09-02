import 'dart:ffi';

import 'package:ecommurce/Controller/LoginPageController.dart';
import 'package:ecommurce/Controller/SingUpController.dart';
import 'package:ecommurce/Data/Static/static.dart';
import 'package:ecommurce/Data/functions/MainFunctions.dart';
import 'package:ecommurce/view/Screens/one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Singupcontroller controller = Get.put(Singupcontroller());
    return Scaffold(
      backgroundColor: mainColor,
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              Stack(
                children: [
                  Image.asset(
                    MainIcon,
                    width: 200,
                    height: 200,
                  ),
                  Positioned(
                    left: 60,
                    top: 138,
                    child: Text(
                      MainPhrase,
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 25),
                    ),
                  ),
                ],
              ), //"Main icon and text "Buy It""
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 300,
                  height: 75,
                  child: Obx(
                    () => TextField(
                      onChanged: (Value) => controller.Name.value = Value,
                      decoration: InputDecoration(
                        hintText: "Enter your Name",
                        errorText: controller.errorTextName.value,
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        prefixIcon: Icon(Icons.person, color: mainColor),
                        fillColor: parseColor("#ffe5a9"),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  )), // for first text field (Enter your name)
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 75,
                child: Obx(
                  () => TextField(
                    onChanged: (Value) => controller.Email.value = Value,
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      errorText: controller.errorTextEmail.value,
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIcon: Icon(Icons.mail_outline, color: mainColor),
                      fillColor: parseColor("#ffe5a9"),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ), // for Second text field (Enter your Email)
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 75,
                child: Obx(
                  () => TextField(
                    obscureText: true,
                    onChanged: (Value) => controller.Password.value = Value,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                      errorText: controller.errorTextPassword.value,
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIcon: Icon(Icons.lock, color: mainColor),
                      fillColor: parseColor("#ffe5a9"),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ), // for third text field (Enter your password)
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 175,
                height: 50,
                child: MaterialButton(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () => controller.validdateFields(),
                  color: Colors.black,
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ), //sing up button
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 75),
                child: Row(
                  children: [
                    Text(
                      "Do you have an account?",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Get.to(one()),
                      child: Text(
                        "LogIn",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
