// Stateful widget created to change the category
import 'package:flutter/material.dart';
import 'package:movie_catalogs/constants.dart';

class CategoryList extends StatefulWidget {
    const CategoryList({ Key? key }) : super(key: key);

    @override
    _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
    int selectedCategory = 0;
    List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index, context)
            ),
        );
    }

    // extract method for legibility reasons
    Padding buildCategory(int index, BuildContext context) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 12),
            child: GestureDetector(
                onTap: () {
                    setState(() { // gestureDetector to change the selected category, changing its text style and movies displayed
                        selectedCategory = index;
                    });
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            categories[index],
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: index == selectedCategory ? kTextColor : Colors.black.withOpacity(0.4),
                                ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                            height: 6,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index == selectedCategory ? kSecondaryColor : Colors.transparent,
                            )
                        )
                    ],
                ),
            ),
        );
    }
}