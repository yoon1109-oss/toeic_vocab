import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const TOEICVocabApp());
}

class TOEICVocabApp extends StatelessWidget {
  const TOEICVocabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOEIC 단어',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F46E5),
          brightness: Brightness.light,
        ).copyWith(
          primary: const Color(0xFF4F46E5),
          onPrimary: Colors.white,
          primaryContainer: const Color(0xFFEDE9FE),
          onPrimaryContainer: const Color(0xFF3730A3),
          surface: Colors.white,
          onSurface: const Color(0xFF1E1B4B),
          onSurfaceVariant: const Color(0xFF6B7280),
          surfaceContainerLowest: const Color(0xFFF5F3FF),
          surfaceContainer: const Color(0xFFEDE9FE),
          outline: const Color(0xFF818CF8),
          outlineVariant: const Color(0xFFC4B5FD),
          shadow: const Color(0xFF312E81),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F46E5),
          brightness: Brightness.dark,
        ).copyWith(
          primary: const Color(0xFF818CF8),
          onPrimary: const Color(0xFF1E1B4B),
          primaryContainer: const Color(0xFF312E81),
          onPrimaryContainer: const Color(0xFFEDE9FE),
          surface: const Color(0xFF13111F),
          onSurface: const Color(0xFFEDE9FE),
          onSurfaceVariant: const Color(0xFFA5B4FC),
          surfaceContainerLowest: const Color(0xFF0D0B18),
          surfaceContainer: const Color(0xFF1E1B4B),
          outline: const Color(0xFF6366F1),
          outlineVariant: const Color(0xFF3730A3),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
