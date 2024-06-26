import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_bloc_app/common/blocs/bloc/nav_bar_bloc.dart';
import 'package:movie_bloc_app/features/movies/data/datasources/remote/tmdb_datasource.dart';
import 'package:movie_bloc_app/features/movies/data/datasources/remote/tmdb_datasource_impl.dart';
import 'package:movie_bloc_app/features/movies/data/repositories/movie_repo_impl.dart';
import 'package:movie_bloc_app/features/movies/domain/repositories/movie_repo.dart';
import 'package:movie_bloc_app/features/movies/domain/usecases/get_genres.dart';
import 'package:movie_bloc_app/features/movies/domain/usecases/get_now_playing.dart';
import 'package:movie_bloc_app/features/movies/domain/usecases/get_top_rated.dart';
import 'package:movie_bloc_app/features/movies/domain/usecases/get_trending.dart';
import 'package:movie_bloc_app/features/movies/domain/usecases/get_upcoming.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/carousel/movie_carousel_bloc.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/discover_movies_list/discover_movies_list_bloc.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/now_playing/now_playing_bloc.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/top_rated/top_rated_bloc.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/upcoming/upcoming_bloc.dart';

import '../../features/movies/domain/usecases/get_discover_movies.dart';
import '../../features/movies/presentation/blocs/home/backdrop/movie_backdrop_bloc.dart';
import '../../features/movies/presentation/blocs/home/genres/genres_bloc.dart';
import '../../features/movies/presentation/blocs/home/years/years_bloc.dart';

final sl = GetIt.I;

Future init() async {
  //Datasources
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<TmdbDatasource>(() => TmdbDatasourceImpl(sl()));
  sl.registerLazySingleton<MovieRepo>(() => MovieRepoImpl(tmdbDatasource: sl()));

  //Use cases
  sl.registerLazySingleton<GetTrending>(() => GetTrending(sl()));
  sl.registerLazySingleton<GetGenres>(() => GetGenres(sl()));
  sl.registerLazySingleton<GetDiscoverMovies>(() => GetDiscoverMovies(sl()));
  sl.registerLazySingleton<GetNowPlaying>(() => GetNowPlaying(sl()));
  sl.registerLazySingleton<GetUpcoming>(() => GetUpcoming(sl()));
  sl.registerLazySingleton<GetTopRated>(() => GetTopRated(sl()));

  //Blocs
  sl.registerFactory(() => MovieCarouselBloc(getTrending: sl(), movieBackdropBloc: sl()));
  sl.registerFactory(() => MovieBackdropBloc());
  sl.registerFactory(() => NavBarBloc());
  sl.registerFactory(() => GenresBloc(getGenres: sl()));
  sl.registerFactory(() => YearsBloc());
  sl.registerFactory(() => DiscoverMoviesListBloc(getDiscoverMovies: sl(), genresBloc: sl(), yearsBloc: sl()));
  sl.registerFactory(() => NowPlayingBloc(getNowPlaying: sl()));
  sl.registerFactory(() => UpcomingBloc(getUpcoming: sl()));
  sl.registerFactory(() => TopRatedBloc(getTopRated: sl()));
}
