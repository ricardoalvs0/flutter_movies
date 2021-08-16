import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_catalogs/constants.dart';
import 'package:movie_catalogs/models/movie.dart';

class BackdropAndRating extends StatelessWidget {
    const BackdropAndRating({
        Key? key,
        required this.size,
        required this.movie,
    }) : super(key: key);

    final Size size;
    final Movie movie;

    @override
    Widget build(BuildContext context) {
        return Container(
            // 40% of the total height
            height: size.height * 0.4,
            child: Stack(
                children: [
                    Container(
                        height: size.height * 0.4 - 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.only(bottomLeft: Radius.circular(50)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(movie.moviePoster)
                            )
                        )
                    ),
                    // Ratio Box
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                            height: 100,
                            width: size.width * 0.9, // it will cover 90% of total width
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                ),
                                boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 5),
                                        blurRadius: 50,
                                        color: Color(0xFF12153D).withOpacity(0.2),
                                    )
                                ]
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            SvgPicture.asset('assets/icons/star_fill.svg', height: 25),
                                            SizedBox(height: kDefaultPadding / 4),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(color: Colors.black),
                                                    children: [
                                                        TextSpan(
                                                            text: "${movie.rating}/",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w600,
                                                            ),
                                                        ),
                                                        TextSpan(text: '10\n'),
                                                        TextSpan(
                                                            text: '150,212',
                                                            style: TextStyle(color: kTextLightColor),
                                                        ),
                                                    ],
                                                ),
                                            )
                                        ],
                                    ),
                                    // Rate This
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            SvgPicture.asset('assets/icons/star.svg', height: 25,),
                                            SizedBox(height: kDefaultPadding / 4),
                                            Text(
                                                "Rate This",
                                                style: Theme.of(context).textTheme.bodyText2,
                                            )
                                        ],
                                    ),
                                    //Metascore
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Container(
                                                padding: EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF52CF66),
                                                    borderRadius: BorderRadius.circular(2),
                                                ),
                                                child: Text(
                                                    "${movie.metascoreRating}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500
                                                    )
                                                )
                                            ),
                                            SizedBox(height: kDefaultPadding / 4),
                                            Text('Metascore', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                            Text('62 critics reviews', style: TextStyle(color: kTextLightColor))
                                        ],
                                    )
                                ],
                            ),
                        ),
                    ),
                    // Back Button
                    SafeArea(
                        child: Column(
                            children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
                                        color: Colors.white,
                                    ),
                                    child: BackButton(),
                                ),
                            ],
                        )
                    )
                ],
            ),
        );
    }
}