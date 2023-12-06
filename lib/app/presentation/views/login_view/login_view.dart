import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/views/login_view/widgets/login_divider.dart';
import 'package:proyecto_base/app/presentation/widgets/my_social_button.dart';
import '../../widgets/my_button_form.dart';
import '../../widgets/my_text_form.dart';

class LoginView extends StatelessWidget{
  LoginView({super.key});

  static const String name = 'login_view';

  final _email= TextEditingController();

  final _password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child:  Column(
                  children: [
                    SvgPicture.asset('assets/images/Logo.svg',
                      alignment: Alignment.topCenter,
                      width: 200,
                    ),
                    const SizedBox(height: 20,),
                    const Text('Login to your account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),),
                    const SizedBox(height: 20,),
                    MyTextForm(
                      labelText: 'Email',
                      hinText: 'Enter your email',
                      textInputType: TextInputType.emailAddress,
                      obscureText: false,
                      suffixIcon: false,
                      controller:_email,
                  ),
                    const SizedBox(height: 20,),
                    MyTextForm(
                      labelText: 'Password',
                      hinText: 'Enter your password',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      suffixIcon: true,
                      controller: _password,
                    ),
                    const SizedBox(height: 20,),
                    MyButtonForm(
                      text: 'Iniciar Sesion',
                      onTap: (){
                        print('Sign Up');
                      },
                    ),
                    const SizedBox(height: 20,),
                    MyButtonForm(
                      text: 'Registro',
                      onTap: (){
                        print('Registration');
                        context.pushNamed('register_view');
                      },
                    ),
                    const SizedBox(height: 20,),
                    const LoginDivider(),
                    const SizedBox(height: 20,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MySocialButton(
                            onTap: (){},
                            imagePath:'assets/images/logoinsta.png',
                            ),
                        MySocialButton(
                          onTap: (){},
                          imagePath:'assets/images/logoinsta.png',
                        ),
                        MySocialButton(
                          onTap: (){},
                          imagePath:'assets/images/logoinsta.png',
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),
        ),
    );
  }
}