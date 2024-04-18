import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'configs/x_configs.dart';
import 'modules/home/x_homes.dart';
import 'modules/sliver_screen/x_sliver_screens.dart';
import 'modules/dashboard/x_dashboards.dart';
import 'modules/grocery/x_groceries.dart';
import 'package:flutter_app/modules/movie/x_movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TrendingMoviesBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App!!',
        theme: MyThemes.lightMode,
        darkTheme: MyThemes.darkMode,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/dashboard': (context) => DashboardPage(),
          '/grocery': (context) => GroceryPage(),
          '/movie_home': (context) => MovieHomePage(),
          '/sliver': (context) => SliverView(),
        },
      ),
    );
  }
}
