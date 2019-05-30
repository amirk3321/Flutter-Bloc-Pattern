import 'package:rxdart/rxdart.dart';
import '../models/item_model_entity.dart';
import '../repository/repository.dart';

class MoviesBloc{
  final _repository =Repository();
  final _movieFetcher=PublishSubject<ItemModelEntity>();

  Observable<ItemModelEntity> get allMovies =>_movieFetcher.stream;

  fetchAllMovies() async {
    ItemModelEntity itemModelEntity=await _repository.fetchAllMovies();
    _movieFetcher.sink.add(itemModelEntity);
  }
  dispose(){
    _movieFetcher.close();
  }

}