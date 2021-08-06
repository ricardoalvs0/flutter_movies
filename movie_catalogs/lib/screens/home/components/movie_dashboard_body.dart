import 'package:flutter/material.dart';
import 'package:movie_catalogs/screens/home/components/categories.dart';
import 'package:movie_catalogs/screens/home/components/genres.dart';

class Body extends StatelessWidget {
    const Body({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                CategoryList(),
                Genres(),
                MovieCarousel(),
            ],
        );
    }
}

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({ Key? key }) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}