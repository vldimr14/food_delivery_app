import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'widgets/app_navigation_bar.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppNavigationBar(),
      theme: ThemeData(
        primaryColor: Colors.grey.shade200,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            shadows: [
              Shadow(color: Colors.black, blurRadius: 15, offset: Offset(1, 1)),
            ],
          ),
          titleMedium: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          titleSmall: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(1, 1),
              ),
            ],
          ),
          bodyMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
