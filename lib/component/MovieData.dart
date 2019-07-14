// import 'dart:convert';

class MovieData {
  Rating rating;
  List<String> genres;
  String title;
  List<Cast> casts;
  int collectCount;
  List<Cast> directors;
  Avatars images;
  String id;

  MovieData();

  factory MovieData.formJson(Map<String, dynamic> movieDataJson) {
    MovieData movieData = MovieData();

    Rating rating = Rating(
        movieDataJson['rating']['max'],
        double.parse(movieDataJson['rating']['average'].toString()),
        movieDataJson['rating']['min'],
        movieDataJson['rating']['stars'],
        movieDataJson['rating']['details']
        );
    movieData.rating = rating;

    List<String> genres = List();
    for (String genre in movieDataJson['genres']) {
      genres.add(genre);
    }
    movieData.genres = genres;

    movieData.title = movieDataJson['title'];

    List<Cast> casts = List();
    for (dynamic castData in movieDataJson['casts']) {
      Avatars avatars = Avatars(castData['avatars']['small'],
          castData['avatars']['large'], castData['avatars']['medium']);
      Cast cast =
          Cast(castData['alt'], avatars, castData['name'], castData['id']);
      casts.add(cast);
    }
    movieData.casts = casts;

    movieData.collectCount = movieDataJson['collect_count'];

    List<Cast> directors = List();
    for (dynamic castData in movieDataJson['directors']) {
      Avatars avatars = Avatars(castData['avatars']['small'],
          castData['avatars']['large'], castData['avatars']['medium']);
      Cast cast =
          Cast(castData['alt'], avatars, castData['name'], castData['id']);
      directors.add(cast);
    }
    movieData.directors = directors;

    movieData.images = Avatars(movieDataJson['images']['small'],
        movieDataJson['images']['large'], movieDataJson['images']['medium']);

    movieData.id = movieDataJson['id'];

    return movieData;
  }
}

class Rating {
  int max;
  double average;
  int min;
  String starts;
  Map<String, dynamic> details;
  Rating(this.max, this.average, this.min, this.starts,this.details);
}

class Cast {
  String alt;
  Avatars avatars;
  String name;
  String id;

  Cast(this.alt, this.avatars, this.name,this.id,);
}

class Avatars {
  String small;
  String large;
  String medium;

  Avatars(this.small, this.large, this.medium);
}
