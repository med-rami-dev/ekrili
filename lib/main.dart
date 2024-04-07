import 'package:ekrili/core/utils/app_router.dart';
import 'package:ekrili/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ekrili());
}

class Ekrili extends StatelessWidget {
  const Ekrili({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Ekrili',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
    );
  }
}
