import 'package:flutter_riverpod/flutter_riverpod.dart';

class AgeValidationProvider extends StateNotifier<String>{

  AgeValidationProvider(): super('String');
  bool? isEligible;
  String? message ="";

  void checkValidation(int age){
    if(age>=18){
      isEligible = true;
      message = "You are Eligible";
      state = message!;
    } else{
      isEligible = false;
      message = "You are not Eligible";
      state = message!;
    }
  }

}