import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_bloc_app/core/utils/helpers/helper_functions.dart';
import 'package:movie_bloc_app/features/movies/presentation/blocs/home/discover_movies_list/discover_movies_list_bloc.dart';
import 'package:movie_bloc_app/features/movies/presentation/widgets/home/movies_list.dart';

import '../../../../../common/widgets/placeholders/custom_placeholder.dart';
import '../../../../../core/utils/strings/app_colors.dart';

class DiscoverMoviesList extends StatelessWidget {
  const DiscoverMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final darkMode = HelperFunctions.isDarkMode(context);
    return BlocBuilder<DiscoverMoviesListBloc, DiscoverMoviesListState>(
      builder: (_, state) {
        if (state is DiscoverMoviesListInitial) {
          context.read<DiscoverMoviesListBloc>().add(const DiscoverMoviesListLoadEvent());
        } else if (state is DiscoverMoviesListError) {
          return CustomPlaceholder(
            height: size.height * 0.55,
            width: size.width,
            child: FadeIn(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.solidFaceSadTear, size: 50, color: darkMode ? AppColors.coolFrost : AppColors.magicWhale),
                  SizedBox(height: size.height * 0.05),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: darkMode ? AppColors.diamondCut : AppColors.magicWhale,
                        ),
                  ),
                ],
              ),
            ),
          );
        } else if (state is DiscoverMoviesListLoaded) {
          return MoviesList(movies: state.movies);
        }
        return CustomPlaceholder(
          height: size.height * 0.55,
          width: size.width,
          play: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: darkMode ? AppColors.coolFrost : AppColors.magicWhale),
              SizedBox(height: size.height * 0.05),
              Text('Loading...', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        );
      },
    );
  }
}
