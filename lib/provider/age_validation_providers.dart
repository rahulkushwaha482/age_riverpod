import 'package:flutter_riverpod/flutter_riverpod.dart';

class AgeValidationProvider extends StateNotifier<String>{

  AgeValidationProvider(): super('Type Your Age to check weather your eligible or not');

  void checkValidation(int age){
      state = age>=18?"You are Eligible":"You are not Eligible";
  }

}

final ageValidationProvider = StateNotifierProvider((ref) {
  return AgeValidationProvider();
});