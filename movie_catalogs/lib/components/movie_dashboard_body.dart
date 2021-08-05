import 'package:flutter/material.dart';
import 'package:movie_catalogs/http/webclients/movies_webclient.dart';

class Body extends StatelessWidget {
    const Body({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                CategoryList(),
            ],
        );
    }
}

// Stateful widget created to change the category
class CategoryList extends StatefulWidget {
    const CategoryList({ Key? key }) : super(key: key);

    @override
    _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
    int selectedCategory = 0;
    List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];

    final MoviesWebClient _moviesWebClient = MoviesWebClient();

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index, context)
            ),
        );
    }

    // extract method for legibility reasons
    Text buildCategory(int index, BuildContext context) {
        return Text(
            categories[index],
            style: Theme.of(context).textTheme.headline5,
        );
    }
}