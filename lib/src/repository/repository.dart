import 'dart:async';
import 'movie_api_provider.dart';
import '../models/item_model_entity.dart';


//this repository class is the central point form where the data
//will flow to the BLOC
class Repository{
  //movie_api_provider class instance
  final movieApiProvider=MovieApiProvider();

  Future<ItemModelEntity> fetchAllMovies() => movieApiProvider.fetchMovieList();
}