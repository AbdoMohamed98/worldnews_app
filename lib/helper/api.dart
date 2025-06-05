import 'package:dio/dio.dart';
import 'package:worldnews_app/models/newsabouteverything.dart';



class GetNews {
  final Dio dio = Dio();

  Future<List<Newsabouteverything>> getWorldNews() async {
    try {
      final response = await dio.get(
     'https://newsapi.org/v2/everything?q=apple&from=2025-06-04&to=2025-06-04&sortBy=popularity&apiKey=975d877bc37d4fe99baf722a7d90ad82'
      );

      final List<dynamic> data = response.data['articles'];
      return data.map((item) => Newsabouteverything.fromJson(item)).toList();
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
