import 'package:flutter/material.dart';
import 'package:syncro/core/const/app_colors.dart';
import 'package:syncro/widgets/custom_button.dart';
import 'package:syncro/widgets/custom_sized.dart';
import 'package:syncro/widgets/custom_textfield.dart';
import 'package:syncro/widgets/tesxt_widgets.dart';

import '../widgets/auth_options.dart';
import '../widgets/logo_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoWidget(),
            Sized(height: 0.04,),
            mediumText(title: 'Login to your Account',fontSize: 16,fontWeight: FontWeight.w500),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                smallText(title: 'No account? ',height:0.4),
                smallText(title: 'Create one',color: AppColors.primaryColor),
              ]
            ),
            Sized(height: 0.04,),
            CustomTextField(controller: emailController, title: 'Email', hintText: 'email@gamil.com', validate: (value){}),
            Sized(height: 0.025,),
            CustomTextField(controller: passwordController, title: 'Password', hintText: '*************', validate: (value){},isPassword: true,obscureText: true,),
            Sized(height: 0.016,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      height: 11.5,
                      width: 11.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor,)
                      ),
                    ),
                    Sized(width: 0.02,),
                    smallText(title: 'Remember me',color: AppColors.secondaryTextColor),
                  ],
                ),
                smallText(title: 'Forgot password?',color: AppColors.disableColor),
              ],
            ),
            Sized(height: 0.03,),
            CustomButton(title: 'Login' , onTap: (){}),
            Sized(height: 0.04,),
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.strokeColor,)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                    child: smallText(title: 'or Login with',color: AppColors.tertiaryTextColor)),
                Expanded(child: Divider(color: AppColors.strokeColor,)),
              ],
            ),
            Sized(height: 0.03,),
            AuthOptionsWidget(),
          ],
        ),
      ),
    );
  }
}







