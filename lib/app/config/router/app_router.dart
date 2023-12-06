import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/views/login_view/login_view.dart';
import 'package:proyecto_base/app/presentation/views/register_view/register_view.dart';
import '../../presentation/views/home_view/home_view.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home_view',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/login',
      name: 'login_view',
      builder: (context, state) =>  LoginView(),
    ),
    GoRoute(
      path: '/register',
      name: 'register_view',
      builder: (context, state) =>  RegisterView(),
    ),

  ],
);