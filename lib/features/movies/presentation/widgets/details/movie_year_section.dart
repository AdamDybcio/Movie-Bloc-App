import 'package:auto_size_text/auto_size_text.dart';
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
    required this.runtime,
  });

  final String year;
  final int budget;
  final String language;
  final int runtime;

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (year != '')
                        Container(
                          height: size.height * 0.1,
                          decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                              ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                'Release Date: ${year.displayDate()}',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      if (runtime != -1 && year != "") const SizedBox(width: 20),
                      if (runtime != -1)
                        Flexible(
                          child: Container(
                            height: size.height * 0.1,
                            decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                  color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                                ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  'Runtime: $runtime mins',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (budget != -1)
                        Container(
                          height: size.height * 0.1 - 20,
                          decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                              ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText(
                                'Budget: \$${budget.toString().changeToMilion()}',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      if (budget != -1 && language != "UNKNOWN") const SizedBox(width: 20),
                      if (language != "UNKNOWN")
                        Flexible(
                          child: Container(
                            height: size.height * 0.1 - 20,
                            decoration: Styles(context: context).cardBoxDecoration.copyWith(
                                  color: Theme.of(context).colorScheme.secondary.withOpacity(1),
                                ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  'Original language: ${language.toUpperCase()}',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
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
      ],
    );
  }
}
