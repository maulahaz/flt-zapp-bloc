import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:http/http.dart' as http;

import '../x_news.dart';

class NewsApi {
  static Future<Either<String, List<NewsModel>>>
      fetchNewsData() async {
    var client = http.Client();
    final response = await client
        .get(Uri.parse("$BASE_URL_NEWS/everything?q=bitcoin&apiKey=$API_KEY_NEWS"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List<NewsModel> news = (json.decode(response.body)['articles'] as List)
          .map((movie) => NewsModel.fromJson(movie))
          .toList();
      print('***fetchNewsData: OK');
      return Right(news);
    } else {
      print('***fetchNewsData: error');
      return Left('Upss..error occured');
    }
  }

  
}
