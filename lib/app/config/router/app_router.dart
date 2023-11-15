import 'package:go_router/go_router.dart';
import '../../presentation/views/home_view/home_view.dart';


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    )
  ],
);