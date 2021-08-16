import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/models/movie.dart';
import 'package:movie_catalogs/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
    @override
    _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
    late PageController _pageController;
    int initialPage = 1;

    @override
    void initState() {
        super.initState();
        _pageController = PageController(
            // so that we can have small portion shown on left and right side
            viewportFraction: 0.8,
            // by default our movie poster
            initialPage: initialPage,
        );
    }

    @override
    void dispose() {
        super.dispose();

        _pageController.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: AspectRatio(
                aspectRatio: 0.80,
                child: PageView.builder(
                    onPageChanged: (value) {
                        setState(() {
                            initialPage = value;
                        });
                    },
                    controller: _pageController,
                    physics: ClampingScrollPhysics(),
                    itemCount: movies.length,
                    itemBuilder: (context, index) => buildMovieSlider(index),
                )
            ),
        );
    }

    Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
            double value = 0;

            if(_pageController.position.haveDimensions) {
                value = index.toDouble() - _pageController.page!.toDouble();

                // as we need to rotate the other elements (movie poster) by 7 degree, this is the calculation we need to do
                // we use clamp so that our value vary from -1 to 1
                value = (value * 0.038).clamp(-1, 1);
            }

            return AnimatedOpacity(
                duration: Duration(milliseconds: 150),
                opacity: initialPage == index ? 1 : 0.4,
                child: Transform.rotate(
                    angle: math.pi * value,
                    child: MovieCard(movie: movies[index]),
                ),
            );
        },
    );
}
