import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncro/core/const/app_colors.dart';
import 'package:syncro/providers/auth_providers/signup_provider.dart';
import 'package:syncro/widgets/custom_button.dart';
import 'package:syncro/widgets/custom_sized.dart';
import 'package:syncro/widgets/custom_textfield.dart';
import 'package:syncro/widgets/tesxt_widgets.dart';
import '../../../routes/routes.dart';
import '../widgets/auth_options.dart';
import '../widgets/divider_row.dart';
import '../widgets/logo_widget.dart';


class SignupScreen extends  ConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var signup = ref.watch(signupProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sized(height: 0.05,),
            LogoWidget(),
            Sized(height: 0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: CustomTextField(controller: signup.firstNameController, title: 'First Name', hintText: 'Bilal', validate: (value){}),),
                Sized(width: 0.025,),
                Expanded(child: CustomTextField(controller: signup.lastNameController, title: 'Last Name', hintText: 'Bilal', validate: (value){})),
              ],
            ),
            Sized(height: 0.025,),
            CustomTextField(controller: signup.emailController, title: 'Email', hintText: 'email@gamil.com', validate: (value){}),
            Sized(height: 0.025,),
            CustomTextField(controller: signup.passwordController, title: 'Password', hintText: '*************', validate: (value){},isPassword: true,obscureText: true,),
            Sized(height: 0.03,),
            CustomButton(title: 'Signup' , onTap: (){}),
            Sized(height: 0.04,),
            DividerRow(title: 'or Sign up with',),
            Sized(height: 0.03,),
            AuthOptionsWidget(),
            Sized(height: 0.03,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, Routes.loginPage);
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    smallText(title: 'Already have an account? ',fontSize: 14),
                    smallText(title: 'Login',color: AppColors.primaryColor,fontSize: 14),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}









