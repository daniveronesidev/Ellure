import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';
import 'theme/app_theme.dart';
import 'services/app_store.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AppStore(), child: const EllureApp()),
  );
}

class EllureApp extends StatelessWidget {
  const EllureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ellure',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: HomeScreen(), // 👈 sem const
    );
  }
}
