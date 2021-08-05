import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_catalogs/components/movie_dashboard_body.dart';
import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/http/webclients/movies_webclient.dart';
import 'package:movie_catalogs/models/movie.dart';

class MoviesDashboard extends StatelessWidget {
    final MoviesWebClient _moviesWebClient = MoviesWebClient();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar(),
            body: Body()
        );
    }

    AppBar buildAppBar() {
        return AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                padding: EdgeInsets.only(left: kDefaultPadding),
                icon: SvgPicture.asset('assets/icons/menu.svg'),
                onPressed: () {},
            ),
            actions: [
                IconButton(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    onPressed: () {},
                ),
            ],
        );
    }
}