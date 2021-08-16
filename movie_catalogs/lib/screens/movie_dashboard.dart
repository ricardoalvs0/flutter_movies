import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_catalogs/screens/home/components/body.dart';
import 'package:movie_catalogs/constants.dart';
class MoviesDashboard extends StatelessWidget {

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
                padding: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding),
                icon: SvgPicture.asset('assets/icons/menu.svg'),
                onPressed: () {},
            ),
            actions: [
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                      onPressed: () {},
                  ),
                ),
            ],
        );
    }
}