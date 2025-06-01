import 'package:dio/dio.dart';

 class Getnews {
  

 

final dio = Dio();

 void getworldnews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&from=2025-05-1&sortBy=popularity&apiKey=975d877bc37d4fe99baf722a7d90ad82');
  print(response);
}
}