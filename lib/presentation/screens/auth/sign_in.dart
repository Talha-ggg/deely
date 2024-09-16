import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_field_utils.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/sigin_controller.dart';
import 'model/user_model.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    bool _isLoading = false;
    final LoginController _loginController = LoginController();

    void _login() {
      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      if (email.isNotEmpty && password.isNotEmpty) {
        setState(() {
          _isLoading = true;
        });

        UserModel user = UserModel(email: email, password: password);
        _loginController.login(user, context).then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please fill all fields')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back,size: 20,),
            SizedBox(width: 4,),
            TextUtils.txt(text: 'Sign In',fontSize: 24,fontWeight: FontWeight.w500)
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const ImageIcon(
                       const AssetImage('assets/icons/logo_icon.png'),
                        color: MyColors.green,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 6),
                        child: const ImageIcon(
                         const AssetImage('assets/icons/deelly.png'),
                          color: MyColors.darkGreen,
                          size: 120,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height*0.04,),
                  TextUtils.txt(text: 'Email',fontSize: 16,fontWeight: FontWeight.w400),
                  SizedBox(height: Get.height*0.004,),
                  TextFieldUtils.customTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress
                  ),
                    SizedBox(height: Get.height*0.045 ),
                  TextUtils.txt(text: 'Password',fontSize: 16,fontWeight: FontWeight.w400),
                  SizedBox(height: Get.height*0.004,),
                  TextFieldUtils.customTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.emailAddress
                  ),
                  SizedBox(height: Get.height*0.01 ),
                  Align(
                    alignment: Alignment.topRight,
                        child: TextUtils.txt(text: 'Forgot password?',fontSize: 12,fontWeight: FontWeight.w400,color: MyColors.lightBlue),

                  ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: MyColors.grey)
                        ),
                      ),
                      TextUtils.txt(text: ' I agree with the terms and condition',color:MyColors.grey,fontSize: 12,fontWeight: FontWeight.w400),
                    ],
                  ),
                  SizedBox(height: Get.height*0.06 ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: MyColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child:  _isLoading
            ? CircularProgressIndicator()
            : SizedBox(
          width: double.infinity,
          height: 50,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [MyColors.green, MyColors.lightBlue],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
                onPressed: () {
                  _login();
                },
                child: TextUtils.txt(text: 'Log In',fontSize: 14,fontWeight: FontWeight.w400,color: MyColors.white)
            ),
          ),
        ),
      ),
    );
  }
}
