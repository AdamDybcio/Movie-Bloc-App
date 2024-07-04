part of 'movie_carousel_bloc.dart';

abstract class MovieCarouselState extends Equatable {
  const MovieCarouselState();

  @override
  List<Object> get props => [];
}

final class MovieCarouselInitial extends MovieCarouselState {}

final class MovieCarouselLoading extends MovieCarouselState {}

final class MovieCarouselError extends MovieCarouselState {
  final String message;

  const MovieCarouselError(this.message);

  @override
  List<Object> get props => [message];
}

final class MovieCarouselLoaded extends MovieCarouselState {
  final List<MovieModel> movies;
  final int currentIndex;
  final bool hasReachedMax;

  const MovieCarouselLoaded(this.hasReachedMax, {required this.movies, this.currentIndex = 0});

  @override
  List<Object> get props => [movies, currentIndex];
}
