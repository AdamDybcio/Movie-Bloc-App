import 'package:movie_bloc_app/features/movies/data/models/genre_model.dart';
import 'package:movie_bloc_app/features/movies/data/models/movie_details_model.dart';
import 'package:movie_bloc_app/features/movies/data/models/movies_result_model.dart';

abstract class TmdbDatasource {
  Future<MoviesResultModel> getPopularMovies({int page = 1});

  Future<MoviesResultModel> getUpcomingMovies({int page = 1});

  Future<List<GenreModel>> getMovieGenres();

  Future<MovieDetailsModel> getMovieDetails({required int id});

  Future<MoviesResultModel> searchMovies({required String query});
}
