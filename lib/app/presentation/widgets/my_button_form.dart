import 'package:flutter/material.dart';


class MyButtonForm extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButtonForm({
    super.key,
    required this.text,
    required this.onTap
  });
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              blurRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color:Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      ),
    );
  }
}