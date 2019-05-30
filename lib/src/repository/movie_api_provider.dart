import 'dart:async';
import 'dart:convert';
import '../models/item_model_entity.dart';
import 'package:http/http.dart' show Client;

class MovieApiProvider{
  Client client= Client();
  final _apiKey='9833545d9f808f9d29afc193167e9c84';


  //fetchMovieList() method is making the network call to the API.
  //once the network cal is complete its returning a future ItemModelEntity
  //obj if the network call was successful or it will throw an exception
  Future<ItemModelEntity> fetchMovieList() async{
    print("Entered");
    final response=await client.get(
      "https://api.themoviedb.org/3/movie/550?api_key=$_apiKey"
    );
    if (response.statusCode==200)
      return ItemModelEntity.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load post');
  }
}