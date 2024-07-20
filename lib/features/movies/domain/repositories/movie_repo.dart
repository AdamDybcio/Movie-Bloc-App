import 'package:movie_bloc_app/features/movies/data/models/genre_model.dart';
import 'package:movie_bloc_app/features/movies/data/models/movie_details_model.dart';

import '../../data/models/movies_result_model.dart';

abstract class MovieRepo {
  Future<MoviesResultModel> getPopularMovies({int page = 1});

  Future<MoviesResultModel> getUpcomingMovies({int page = 1});

  Future<List<GenreModel>> getMovieGenres();

  Future<MovieDetailsModel> getMovieDetails({required int movieId});

  Future<MoviesResultModel> searchMovies({required String query});

  Future<MoviesResultModel> getNowPlayingMovies({int page = 1});

  Future<MoviesResultModel> getTopRatedMovies({int page = 1});

  Future<MoviesResultModel> getTrendingMovies();
}
