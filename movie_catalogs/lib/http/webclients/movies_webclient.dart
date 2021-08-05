import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_catalogs/http/webclient.dart';
import 'package:movie_catalogs/models/movie.dart';

final Uri MOVIES_URI = Uri.https("gist.githubusercontent.com", "ricardoalvs0/e7898a8085e9a750b25a08ec600f881d/raw/f1b45b6fc9aac736fca432f144013b6591df9868/movies.json");

class MoviesWebClient {
    Future<List<Movie>> findAll() async {
        final Response response = await client.get(MOVIES_URI);
        final Map<String, dynamic> decodedJson = jsonDecode(response.body);

        List<Movie> lista = [];

        decodedJson.forEach((key, value) { // Transform the movies object into a List of Movie (object)
            lista.add(Movie.fromJson(value));
        });

        return lista;
    }

}