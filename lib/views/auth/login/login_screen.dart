import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncro/core/const/app_colors.dart';
import 'package:syncro/providers/auth_providers/login_provider.dart';
import 'package:syncro/routes/routes.dart';
import 'package:syncro/widgets/custom_button.dart';
import 'package:syncro/widgets/custom_sized.dart';
import 'package:syncro/widgets/custom_textfield.dart';
import 'package:syncro/widgets/tesxt_widgets.dart';
import '../widgets/auth_options.dart';
import '../widgets/divider_row.dart';
import '../widgets/logo_widget.dart';


class LoginScreen extends  ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var login = ref.watch(loginProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sized(height: 0.066,),
            LogoWidget(),
            Sized(height: 0.04,),
            mediumText(title: 'Login to your Account',fontSize: 16,fontWeight: FontWeight.w500),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, Routes.signupPage);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  smallText(title: 'No account? ',height:0.4),
                  smallText(title: 'Create one',color: AppColors.primaryColor),
                ]
              ),
            ),
            Sized(height: 0.04,),
            CustomTextField(controller: login.emailController, title: 'Email', hintText: 'email@gamil.com', validate: (value){}),
            Sized(height: 0.025,),
            CustomTextField(controller: login.passwordController, title: 'Password', hintText: '*************', validate: (value){},isPassword: true,obscureText: true,),
            Sized(height: 0.016,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                   Consumer(
                       builder: (context,provider,_){
                         var data = provider.watch(loginProvider.select((state)=> state.rememberMe));
                         return  InkWell(
                           onTap: (){
                             provider.read(loginProvider.notifier).rememberMe();
                           },
                           child: Container(
                             alignment: Alignment.center,
                             height: 15,
                             width: 15,
                             decoration: BoxDecoration(
                               color: data == true ? AppColors.primaryColor : AppColors.bgColor,
                                 border: Border.all(color: AppColors.primaryColor,)
                             ),
                             child: data == true ? Icon(Icons.check ,color: AppColors.bgColor,size: 14,) :Sized(),
                           ),
                         );
                       }
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
            DividerRow(title: 'or Login with',),
            Sized(height: 0.03,),
            AuthOptionsWidget(),
          ],
        ),
      ),
    );
  }
}







