import 'package:login/Screen/home_screen.dart';
import 'package:login/Screen/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:login/core/Class.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
  path: '/home',
  builder: (context, state) {
    final usuario = state.extra as Usuario;
    return HomeScreen(usuario: usuario);
  },
),
]
);