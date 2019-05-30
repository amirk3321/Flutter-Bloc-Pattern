import 'package:flutter/material.dart';
import '../models/item_model_entity.dart';
import '../bloc/movie_bloc.dart';

class MovieList extends StatelessWidget{
  var bloc=MoviesBloc();
  
  Widget buildList(AsyncSnapshot<ItemModelEntity> snapshot){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        return Image.network('https://image.tmdb.org/t/p/original/${snapshot.data.productionCompanies[6].logoPath}',fit: BoxFit.cover,);
      },
      );
        
  }
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllMovies();
    return MaterialApp(
      title: "Bloc Pattern",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Bloc Pattern"),),
        body: StreamBuilder(
            stream: bloc.allMovies,
            builder: (context,AsyncSnapshot<ItemModelEntity> snapshot){
          if (snapshot.hasData)
            return buildList(snapshot);
          else if (snapshot.hasError)
            return Text(snapshot.error.toString());
          return Center(child: CircularProgressIndicator());
        })
      ),
    );
  }
}