import 'package:flutter/material.dart';
import 'package:movie_catalogs/components/main_theme.dart';
import 'package:movie_catalogs/screens/movie_dashboard.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MoviesDashboard(),
        );
    }
}
