import 'package:ecommurce/Data/DataSingUp.dart';
import 'package:ecommurce/Data/Static/static.dart';
import 'package:ecommurce/view/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Singupcontroller extends GetxController {
  //int Id = 0;
  var Name = ''.obs;
  var Email = ''.obs;
  var Password = ''.obs;
  var errorTextName = RxnString();
  var errorTextEmail = RxnString();
  var errorTextEmailForm = RxnString();
  //var errorTextPasswordEmpty = RxnString();
  var errorTextPassword = RxnString();
  void validdateFields() {
    errorTextName.value = Name.value.isEmpty ? 'please fill Name' : null;
    errorTextEmail.value = Email.value.isEmpty
        ? 'please fill Email'
        : (!Email.value.contains("@") && !Email.value.isEmpty)
            ? "the email is not in true form "
            : null; //check the email in true form or not and is fill
    errorTextPassword.value =
        Password.value.length < 8 ? "the password less than 8" : null;
    if (errorTextName.value == null &&
        errorTextEmail.value == null &&
        errorTextPassword.value == null &&
        errorTextEmailForm.value == null)

      ///  errorTextPassword.value == null&&
      Get.to(() => LoginPage());
    SingUpData[Id] = {Name.value, Email.value, Password.value};
    Id++;
    for (int i = 0; i < Id; i++) {
      print(Id);
      print(Name.value);
      print(Email.value);
      print(Password.value);
      print("--------------------------");
    }
  }
}
