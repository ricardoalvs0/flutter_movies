import 'package:flutter/material.dart';
import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/models/movie.dart';

class TitleDurationAndFavBtn extends StatelessWidget {
    const TitleDurationAndFavBtn({
        Key? key,
        required this.movie,
    }) : super(key: key);

    final Movie movie;

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Row(
                children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(
                                    movie.name,
                                    style: Theme.of(context).textTheme.headline5,
                                ),
                                SizedBox(height: kDefaultPadding / 2,),
                                Row(
                                    children: [
                                        Text(
                                            '${movie.year}',
                                            style: TextStyle(color: kTextLightColor),
                                        ),
                                        SizedBox(width: kDefaultPadding,),
                                        Text(
                                            'PG-13',
                                            style: TextStyle(color: kTextLightColor),
                                        ),
                                        SizedBox(width: kDefaultPadding,),
                                        Text(
                                            '2h 30min',
                                            style: TextStyle(color: kTextLightColor),
                                        ),
                                    ]
                                )
                            ],
                        )
                    ),
                    SizedBox(
                        height: 64,
                        width: 64,
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: kSecondaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                )
                            ),
                            child: Icon(Icons.add, size: 28, color: Colors.white),
                        ),
                    ),
                ],
            )
        );
    }
}
