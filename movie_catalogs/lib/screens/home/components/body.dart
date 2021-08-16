import 'package:flutter/material.dart';
import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/screens/home/components/categories.dart';
import 'package:movie_catalogs/screens/home/components/genres.dart';
import 'package:movie_catalogs/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
    const Body({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SingleChildScrollView( // it allows scrolling on small devices
            child: Column(
                children: [
                    CategoryList(),
                    Genres(),
                    SizedBox(height: kDefaultPadding),
                    MovieCarousel(),
                ],
            ),
        );
    }
}
