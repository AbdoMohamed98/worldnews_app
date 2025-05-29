
import 'package:go_router/go_router.dart';
import 'package:worldnews_app/core/navigation/approutes.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.welcomeview,
    routes: [
      GoRoute(path: Approutes.welcomeview,
      name:Approutes.welcomeview ,
       builder: (context, state) => const Welcomeview()),
    
   
      ]);
}
