import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
    runApp(const BukuResepApp());
}

class BukuResepApp extends StatelessWidget {
    const BukuResepApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Buku Resep Masakan',
            theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.deepOrange,
                ),
                fontFamily: 'Roboto',
            ),
            home: const HomeView(),
        );
    }
}