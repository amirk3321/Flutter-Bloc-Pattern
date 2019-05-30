class ItemModelEntity {
  String originalLanguage;
  String imdbId;
  bool video;
  String title;
  String backdropPath;
  int revenue;
  List<ItemModelGenre> genres;
  double popularity;
  List<ItemModelProductionCountry> productionCountries;
  int id;
  int voteCount;
  int budget;
  String overview;
  String originalTitle;
  int runtime;
  String posterPath;
  List<ItemModelSpokenLanguage> spokenLanguages;
  List<ItemModelProductionCompany> productionCompanies;
  String releaseDate;
  double voteAverage;
  dynamic belongsToCollection;
  String tagline;
  bool adult;
  String homepage;
  String status;

  ItemModelEntity(
      {this.originalLanguage,
      this.imdbId,
      this.video,
      this.title,
      this.backdropPath,
      this.revenue,
      this.genres,
      this.popularity,
      this.productionCountries,
      this.id,
      this.voteCount,
      this.budget,
      this.overview,
      this.originalTitle,
      this.runtime,
      this.posterPath,
      this.spokenLanguages,
      this.productionCompanies,
      this.releaseDate,
      this.voteAverage,
      this.belongsToCollection,
      this.tagline,
      this.adult,
      this.homepage,
      this.status});

  ItemModelEntity.fromJson(Map<String, dynamic> json) {
    originalLanguage = json['original_language'];
    imdbId = json['imdb_id'];
    video = json['video'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    revenue = json['revenue'];
    if (json['genres'] != null) {
      genres = new List<ItemModelGenre>();
      (json['genres'] as List).forEach((v) {
        genres.add(new ItemModelGenre.fromJson(v));
      });
    }
    popularity = json['popularity'];
    if (json['production_countries'] != null) {
      productionCountries = new List<ItemModelProductionCountry>();
      (json['production_countries'] as List).forEach((v) {
        productionCountries.add(new ItemModelProductionCountry.fromJson(v));
      });
    }
    id = json['id'];
    voteCount = json['vote_count'];
    budget = json['budget'];
    overview = json['overview'];
    originalTitle = json['original_title'];
    runtime = json['runtime'];
    posterPath = json['poster_path'];
    if (json['spoken_languages'] != null) {
      spokenLanguages = new List<ItemModelSpokenLanguage>();
      (json['spoken_languages'] as List).forEach((v) {
        spokenLanguages.add(new ItemModelSpokenLanguage.fromJson(v));
      });
    }
    if (json['production_companies'] != null) {
      productionCompanies = new List<ItemModelProductionCompany>();
      (json['production_companies'] as List).forEach((v) {
        productionCompanies.add(new ItemModelProductionCompany.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    voteAverage = json['vote_average'];
    belongsToCollection = json['belongs_to_collection'];
    tagline = json['tagline'];
    adult = json['adult'];
    homepage = json['homepage'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['original_language'] = this.originalLanguage;
    data['imdb_id'] = this.imdbId;
    data['video'] = this.video;
    data['title'] = this.title;
    data['backdrop_path'] = this.backdropPath;
    data['revenue'] = this.revenue;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    data['popularity'] = this.popularity;
    if (this.productionCountries != null) {
      data['production_countries'] =
          this.productionCountries.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['vote_count'] = this.voteCount;
    data['budget'] = this.budget;
    data['overview'] = this.overview;
    data['original_title'] = this.originalTitle;
    data['runtime'] = this.runtime;
    data['poster_path'] = this.posterPath;
    if (this.spokenLanguages != null) {
      data['spoken_languages'] =
          this.spokenLanguages.map((v) => v.toJson()).toList();
    }
    if (this.productionCompanies != null) {
      data['production_companies'] =
          this.productionCompanies.map((v) => v.toJson()).toList();
    }
    data['release_date'] = this.releaseDate;
    data['vote_average'] = this.voteAverage;
    data['belongs_to_collection'] = this.belongsToCollection;
    data['tagline'] = this.tagline;
    data['adult'] = this.adult;
    data['homepage'] = this.homepage;
    data['status'] = this.status;
    return data;
  }
}

class ItemModelGenre {
  String name;
  int id;

  ItemModelGenre({this.name, this.id});

  ItemModelGenre.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}

class ItemModelProductionCountry {
  String iso31661;
  String name;

  ItemModelProductionCountry({this.iso31661, this.name});
  ItemModelProductionCountry.fromJson(Map<String, dynamic> json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_3166_1'] = this.iso31661;
    data['name'] = this.name;
    return data;
  }
}

class ItemModelSpokenLanguage {
  String name;
  String iso6391;

  ItemModelSpokenLanguage({this.name, this.iso6391});

  ItemModelSpokenLanguage.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    iso6391 = json['iso_639_1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['iso_639_1'] = this.iso6391;
    return data;
  }
}

class ItemModelProductionCompany {
  String logoPath;
  String name;
  int id;
  String originCountry;

  ItemModelProductionCompany(
      {this.logoPath, this.name, this.id, this.originCountry});

  ItemModelProductionCompany.fromJson(Map<String, dynamic> json) {
    logoPath = json['logo_path'];
    name = json['name'];
    id = json['id'];
    originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo_path'] = this.logoPath;
    data['name'] = this.name;
    data['id'] = this.id;
    data['origin_country'] = this.originCountry;
    return data;
  }
}
