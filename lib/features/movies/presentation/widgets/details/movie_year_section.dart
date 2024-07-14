import 'package:flutter/material.dart';
import 'package:movie_bloc_app/common/styles/styles.dart';
import 'package:movie_bloc_app/common/widgets/texts/header.dart';
import 'package:movie_bloc_app/core/utils/extensions/string_extensions.dart';

class MovieYearSection extends StatelessWidget {
  const MovieYearSection({
    super.key,
    required this.year,
    required this.budget,
    required this.language,
  });

  final String year;
  final int budget;
  final String language;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Header(title: 'Movie Details'),
        SizedBox(
          height: size.height * 0.2,
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 12, right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: Styles(context: context).cardBoxDecoration.copyWith(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Release Date: ${year.displayDate()}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Budget: ${budget.toString().changeToMilion()}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                  color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Original language: ${language.toUpperCase()}',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}