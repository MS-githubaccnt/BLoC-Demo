import "package:bloc_demo/presentation/screens/api_screen.dart";
import "package:bloc_demo/presentation/screens/counter_screen.dart";
import "package:go_router/go_router.dart";

final GoRouter router=GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',
    builder:(context,state)=>const CounterScreen()),
    GoRoute(path: '/apiScreen',
    builder:(context,state)=>const ApiScreen())
  ]);