
import 'package:go_router/go_router.dart';
import 'package:worldnews_app/core/navigation/approutes.dart';
import 'package:worldnews_app/views/articaleview.dart';
import 'package:worldnews_app/views/homeview.dart';
import 'package:worldnews_app/views/searchresultsview.dart';


class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.homeview,
    routes: [
      GoRoute(path: Approutes.homeview,
      name:Approutes.homeview ,
       builder: (context, state) => const Homeview()),
    
      GoRoute(path: Approutes.searchresultsview,
      name: Approutes.searchresultsview,
      builder: (context, state) => const Searchresultsview(),
      ),
    
   
    GoRoute(
      path: Approutes.articleview,
      name: Approutes.articleview,
      builder: (context, state) {
        final title = state.uri.queryParameters['title'] ?? '';
        final author = state.uri.queryParameters['author'] ?? '';
        final imageUrl = state.uri.queryParameters['imageUrl'] ?? '';
        final dateStr = state.uri.queryParameters['date'];
        final date = dateStr != null ? DateTime.tryParse(dateStr) ?? DateTime.now() : DateTime.now();
     

        return Articaleview(
          title: title,
          author: author,
          imageUrl: imageUrl,
          date: date, description: '',
        );
      },
    ),
    // other routes...
  ],


    
   
      );
}
