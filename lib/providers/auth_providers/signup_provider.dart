
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupProvider = StateNotifierProvider<SignupNotifier,SignupState>((red){
  return SignupNotifier();
});


class SignupNotifier extends StateNotifier<SignupState>{
  SignupNotifier():super(SignupState(isLoading: false,));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();


}




class SignupState {
  final bool isLoading;
  SignupState({required this.isLoading});

  SignupState copyWith({bool ? isLoading,bool ? rememberMe}){
    return SignupState(isLoading: isLoading ?? this.isLoading,);
  }
}