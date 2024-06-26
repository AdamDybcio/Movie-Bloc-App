part of 'movie_carousel_bloc.dart';

abstract class MovieCarouselEvent extends Equatable {
  const MovieCarouselEvent();

  @override
  List<Object> get props => [];
}

final class CarouselLoadEvent extends MovieCarouselEvent {
  final int currentIndex;

  const CarouselLoadEvent({this.currentIndex = 0});

  @override
  List<Object> get props => [currentIndex];
}
