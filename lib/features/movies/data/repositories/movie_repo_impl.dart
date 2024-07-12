import 'package:movie_bloc_app/features/movies/data/models/genre_model.dart';
import 'package:movie_bloc_app/features/movies/data/models/movie_details_model.dart';

import '../../domain/repositories/movie_repo.dart';
import '../datasources/remote/tmdb_datasource.dart';
import '../models/movies_result_model.dart';

class MovieRepoImpl extends MovieRepo {
  final TmdbDatasource tmdbDatasource;

  MovieRepoImpl({
    required this.tmdbDatasource,
  });

  @override
  Future<MoviesResultModel> getPopularMovies({int page = 1}) {
    try {
      final movies = tmdbDatasource.getPopularMovies(page: page);
      return movies;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<MoviesResultModel> getUpcomingMovies({int page = 1}) {
    try {
      final movies = tmdbDatasource.getUpcomingMovies(page: page);
      return movies;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<GenreModel>> getMovieGenres() {
    try {
      final genres = tmdbDatasource.getMovieGenres();
      return genres;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails({required int movieId}) {
    try {
      final movie = tmdbDatasource.getMovieDetails(id: movieId);
      return movie;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<MoviesResultModel> searchMovies({required String query}) {
    try {
      final movies = tmdbDatasource.searchMovies(query: query);
      return movies;
    } catch (e) {
      throw Exception(e);
    }
  }
}
