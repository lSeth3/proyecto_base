import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget{
  const LoginView({super.key});

  static const String name = 'login_view';


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
                      colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,BlendMode.srcIn,



                      ),
                      alignment: Alignment.topCenter,
                      width: 258,

                    ),
                    const Text('Login to your account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),),

                  ],
                ),
              )
          ),
        ),
    );
  }
}