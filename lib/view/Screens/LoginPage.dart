import 'package:ecommurce/Controller/LoginPageController.dart';
import 'package:ecommurce/Data/Static/static.dart';
import 'package:ecommurce/Data/functions/MainFunctions.dart';
import 'package:ecommurce/view/Screens/one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  Loginpagecontroller controller = Get.put(Loginpagecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body:SingleChildScrollView(
       child:Column(
        children: [
          SizedBox(
            height: 80,
          ),
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
            height: 50,
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(40),
          //     color:parseColor("#ffe5a9"),
          //   ),
          SizedBox(
            width: 300,
            height: 50,
            child: Align(
              alignment: Alignment.center,
              child: TextField(
                controller: controller.LoginName,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  prefixIcon: Icon(Icons.mail_outline, color: mainColor),
                  fillColor: parseColor("#ffe5a9"),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ), // for first text field
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              obscureText: true,
              controller: controller.password,
              decoration: InputDecoration(
                fillColor: parseColor("#ffe5a9"),
                filled: true,
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.lock,
                  color: mainColor,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 175,
            height: 50,
            child: MaterialButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () => Get.to(one()),
              color: Colors.black,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ), // "Login Page button"
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 75),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                TextButton(
                  onPressed: () => Get.to(one()),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ) //contain text "Don't have an accont and text buton to sing up"
        ],
      ),
      )
    );
  }
}
