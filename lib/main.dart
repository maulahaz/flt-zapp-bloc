import 'package:flutter/material.dart';

import 'configs/x_configs.dart';
import 'modules/dashboard/x_dashboards.dart';
// import 'modules/home/x_homes.dart';
// import 'modules/sliver_screen/x_sliver_screens.dart';
// import 'modules/x_modules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App!!',
      theme: MyThemes.lightMode,
      darkTheme: MyThemes.darkMode,
      // home: const ModulesView(),
      // home: SliverView(),
      // home: HomePage(),
      home: DashboardPage(),
    );
  }
}