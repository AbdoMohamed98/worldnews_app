
import 'package:go_router/go_router.dart';
import 'package:worldnews_app/core/navigation/approutes.dart';
import 'package:worldnews_app/views/articaleview.dart';
import 'package:worldnews_app/views/homeview.dart';
import 'package:worldnews_app/views/searchresultsview.dart';
import 'package:worldnews_app/views/searchview.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.articleview,
    routes: [
      GoRoute(path: Approutes.homeview,
      name:Approutes.homeview ,
       builder: (context, state) => const Homeview()),
      GoRoute(path:  Approutes.searchview,
      name: Approutes.searchview,
      builder: (context, state) => const Searchview(),
      ),
      GoRoute(path: Approutes.searchresultsview,
      name: Approutes.searchresultsview,
      builder: (context, state) => const Searchresultsview(),
      ),
    
      GoRoute(path: Approutes.articleview,
      name: Approutes.articleview,
      builder: (context, state) => const Articaleview(),
      )
    
   
      ]);
}
