import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/models/movie.dart';
import 'package:movie_catalogs/screens/details/details_screen.dart';

class MovieCard extends StatelessWidget {
    const MovieCard({ Key? key, required this.movie }) : super(key: key);

    final Movie movie;

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: OpenContainer(
                closedElevation: 0,
                openElevation: 0,
                closedBuilder: (context, action) => buildMovieCard(context),
                openBuilder: (context, action) => DetailsScreen(movie: movie)
            ),
        );
    }

    Column buildMovieCard(BuildContext context) {
        return Column(
            children: [
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [kDefaultShadow],
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(movie.imagePath)
                            )
                        )
                    ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                        movie.name,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w600
                        ),
                    ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        SvgPicture.asset('assets/icons/star_fill.svg', height: 20,),
                        SizedBox(width: kDefaultPadding / 2),
                        Text(
                            '${movie.rating}',
                            style: Theme.of(context).textTheme.bodyText2
                        )
                    ],
                )
            ]
        );
        }
}
