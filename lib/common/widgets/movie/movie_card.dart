import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_bloc_app/common/styles/styles.dart';
import 'package:movie_bloc_app/common/widgets/movie/adult_widget.dart';
import 'package:movie_bloc_app/common/widgets/movie/mark_widget.dart';
import 'package:movie_bloc_app/common/widgets/movie/vote_avg_widget.dart';
import 'package:movie_bloc_app/core/utils/strings/url_strings.dart';
import 'package:movie_bloc_app/features/movies/data/models/movie_model.dart';
import 'package:movie_bloc_app/features/personalization/presentation/blocs/settings/settings_bloc.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
    this.aspectRatio = 10 / 16,
    this.verticalPadding = 16,
    this.horizontalPadding = 12,
    this.showInfo = true,
    this.touchable = true,
    this.isHomePage = false,
  });

  final MovieModel movie;
  final double aspectRatio;
  final double verticalPadding;
  final double horizontalPadding;
  final bool showInfo;
  final bool touchable;
  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        if (state is SettingsChanged) {
          return GestureDetector(
            onTap: touchable
                ? () {
                    if (isHomePage) {
                      context.push('/details/${movie.id}', extra: movie);
                    } else {
                      context.pushReplacement('/details/${movie.id}', extra: movie);
                    }
                  }
                : null,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 16),
              child: SizedBox(
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Container(
                    height: size.height * 0.4,
                    decoration: Styles(context: context).cardBoxDecoration.copyWith(
                          image: movie.posterPath.trim() != ''
                              ? DecorationImage(
                                  image: ExtendedNetworkImageProvider(UrlStrings.imageUrl + movie.posterPath, cache: true, printError: false),
                                  fit: BoxFit.cover,
                                  onError: (_, __) {},
                                )
                              : null,
                        ),
                    child: Stack(
                      children: [
                        if (movie.posterPath.trim() == '')
                          SizedBox(
                            height: size.height * 0.35,
                            child: const FittedBox(
                              fit: BoxFit.cover,
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: FaIcon(FontAwesomeIcons.film, color: Colors.white),
                              ),
                            ),
                          ),
                        if (showInfo) MarkWidget(movie: movie),
                        if (showInfo) VoteAvgWidget(voteAvg: movie.voteAverage, alignment: Alignment.bottomRight),
                        if (movie.adult && showInfo) const AdultWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
