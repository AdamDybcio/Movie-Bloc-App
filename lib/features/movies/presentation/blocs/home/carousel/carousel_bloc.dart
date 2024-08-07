import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const CarouselChanged(0)) {
    on<ChangeCarouselMovie>((event, emit) {
      emit(CarouselChanged(event.index));
    });
  }
}
