import 'package:flutter/material.dart';
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
            ElevatedButton(
                onPressed: (){
                  context.pushNamed('login_view');
                },
                child:const Text('Ir a login')),
            Text ('Hi',style:Theme.of(context).textTheme.titleSmall),
            Text ('ola',style:Theme.of(context).textTheme.bodyMedium),
            Text ('Hola',style:Theme.of(context).textTheme.bodyLarge),
          ],

        ) ),
    );
  }
}