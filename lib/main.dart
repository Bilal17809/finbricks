import 'package:flutter/material.dart';

import 'core/routes/routes.dart';
import 'core/routes/routes_name.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      initialRoute: RoutesName.splashPage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

