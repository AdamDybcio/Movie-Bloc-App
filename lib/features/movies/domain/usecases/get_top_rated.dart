import 'package:movie_bloc_app/features/movies/domain/repositories/movie_repo.dart';

import '../../data/models/movies_result_model.dart';
import '../entities/page_param.dart';
import 'usecase.dart';

class GetTopRated extends Usecase<MoviesResultModel, PageParam> {
  final MovieRepo repository;

  GetTopRated(this.repository);

  @override
  Future<MoviesResultModel> call(PageParam params) async {
    return await repository.getTopRated(page: params.page);
  }
}
