
import 'package:go_router/go_router.dart';
import 'package:worldnews_app/core/navigation/approutes.dart';
import 'package:worldnews_app/views/homeview.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.homeview,
    routes: [
      GoRoute(path: Approutes.homeview,
      name:Approutes.homeview ,
       builder: (context, state) => const Homeview()),
    
   
      ]);
}
