import 'package:flutter/material.dart';

final ThemeData myLightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue, // Your primary color
    brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.white,
  ),
  // Add more theme properties as needed
);

final ThemeData myDarkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo, // Your primary color for dark mode
    brightness: Brightness.dark,
  ),
  // Customize other properties for dark mode
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter with Supabase',
      theme: myLightTheme, // Apply your light theme
      darkTheme: myDarkTheme, // Apply your dark theme
      themeMode: ThemeMode.system, // Use system theme (light/dark)
      home: const Placeholder(),
    );
  }
}
