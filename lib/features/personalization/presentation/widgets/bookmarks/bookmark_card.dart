import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_bloc_app/common/styles/styles.dart';
import 'package:movie_bloc_app/common/widgets/movie/vote_avg_widget.dart';
import 'package:movie_bloc_app/features/movies/data/models/movie_model.dart';

import '../../../../../common/widgets/movie/adult_widget.dart';
import '../../../../../common/widgets/movie/mark_widget.dart';

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              context.push('/details/${movie.id}', extra: movie);
            },
            child: Container(
              decoration: Styles(context: context, imagePath: movie.posterPath).cardBoxDecoration,
              child: movie.posterPath == ''
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: FaIcon(
                          FontAwesomeIcons.film,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    )
                  : null,
            ),
          ),
          MarkWidget(movie: movie),
          VoteAvgWidget(voteAvg: movie.voteAverage, alignment: Alignment.bottomRight, width: 30, height: 30),
          if (movie.adult) const AdultWidget(width: 30, height: 30),
        ],
      ),
    );
  }
}
