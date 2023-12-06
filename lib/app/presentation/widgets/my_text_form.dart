import 'package:flutter/material.dart';


class MyTextForm extends StatelessWidget {

  final String labelText;
  final String hinText;
  final TextInputType textInputType ;
  final bool obscureText;
  final bool suffixIcon;
  final TextEditingController controller;


  const MyTextForm({
    super.key,
    required this.hinText,
    required this.labelText,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon,
    required this.controller,
  });


  @override
    Widget build(BuildContext context){
    return Container(
        height: 50,
        decoration:BoxDecoration(
        color:Theme.of(context).colorScheme.surface,
        borderRadius:BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
          color:Theme.of(context).colorScheme.primary.withOpacity(0.1),
          blurRadius:10,
          offset:const Offset(1,5),
    )
        ]
      ),
    child:TextFormField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: textInputType,
    decoration: InputDecoration(
    labelText: labelText,
    hintText: hinText,
    hintStyle:TextStyle(
      color:Theme.of(context).colorScheme.primary.withOpacity(0.5),
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.0),
    )
    ),
    )
    );
  }
  }

