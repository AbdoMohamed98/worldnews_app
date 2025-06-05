import 'package:dio/dio.dart';
import 'package:worldnews_app/models/newsabouteverything.dart';

 class Getnews {
  

 

final dio = Dio();

 Future<List<Newsabouteverything>> getworldnews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&from=2025-05-1&sortBy=popularity&apiKey=975d877bc37d4fe99baf722a7d90ad82');
  List<dynamic> data = response.data['articles'];
  List<Newsabouteverything> worldnews = [];
  for (var item in data) {
    worldnews.add(Newsabouteverything.fromJson(item));
  }
  return worldnews;
}
}