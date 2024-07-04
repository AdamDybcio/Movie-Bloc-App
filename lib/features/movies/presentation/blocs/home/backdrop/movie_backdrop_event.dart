part of 'movie_backdrop_bloc.dart';

sealed class MovieBackdropEvent extends Equatable {
  const MovieBackdropEvent();

  @override
  List<Object> get props => [];
}

class MovieBackdropChangedEvent extends MovieBackdropEvent {
  final MovieModel movie;

  const MovieBackdropChangedEvent(this.movie);

  @override
  List<Object> get props => [movie];
}

class MovieBackdropRefreshEvent extends MovieBackdropEvent {
  const MovieBackdropRefreshEvent();

  @override
  List<Object> get props => [];
}
