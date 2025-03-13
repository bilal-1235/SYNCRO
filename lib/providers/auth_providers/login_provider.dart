import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = StateNotifierProvider<LoginNotifier,LoginState>((red){
  return LoginNotifier();
});


class LoginNotifier extends StateNotifier<LoginState>{
  LoginNotifier():super(LoginState(isLoading: false, rememberMe: false));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  rememberMe(){
    state = state.copyWith(rememberMe: !state.rememberMe);
  }

}




class LoginState {
  final bool isLoading;
  final bool rememberMe ;
  LoginState({required this.isLoading,required this.rememberMe});

  LoginState copyWith({bool ? isLoading,bool ? rememberMe}){
    return LoginState(isLoading: isLoading ?? this.isLoading, rememberMe: rememberMe ?? this.rememberMe);
  }
}