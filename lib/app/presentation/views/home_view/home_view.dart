import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget{
  const HomeView({super.key});
  static const String name = 'home_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.accessibility,
                color: Colors.blue,))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/images/Logo.svg',
              alignment: Alignment.topCenter,
              width: 200,
            ),

            ElevatedButton(
                onPressed: (){
                  context.pushNamed('login_view');
                },
                child:const Text('Ir a login')),
            ElevatedButton(
                onPressed: (){
                  context.pushNamed('register_view');
                },
                child:const Text('Ir a registro'))
          ],

        ) ),
    );
  }
}