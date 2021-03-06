import 'package:flutter/material.dart';
import 'package:movie_catalogs/components/genre_card.dart';
import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/models/movie.dart';
import 'package:movie_catalogs/screens/details/components/backdrop_rating.dart';
import 'package:movie_catalogs/screens/details/components/genres.dart';
import 'package:movie_catalogs/screens/details/components/title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
    final Movie movie;

    const Body({Key? key, required this.movie}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        // it will provide total height and width
        Size size = MediaQuery.of(context).size;

        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                BackdropAndRating(size: size, movie: movie),
                SizedBox(height: kDefaultPadding / 2),
                TitleDurationAndFavBtn(movie: movie),
                Genres(movie: movie),
                SizedBox(height: kDefaultPadding,),
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2,
                        horizontal: kDefaultPadding,
                    ),
                    child: Text(
                        "Description",
                        style: Theme.of(context).textTheme.headline5,
                    )
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                        movie.description,
                        style: TextStyle(
                            color: Color(0xFF737599)
                        )
                    ),
                )
            ],
        );
    }
}
