import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 100, // Set the desired width for the image
            height: 80, // Set the desired height for the image
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Products',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Products'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductCard(
                title: 'Dart',
                description: 'The best script language',
                imagePath: 'assets/w4-s1/dart.png',
              ),
              const SizedBox(height: 16),
              ProductCard(
                title: 'Flutter',
                description: 'The best mobile widget library',
                imagePath: 'assets/w4-s1/flutter.png',
              ),
              const SizedBox(height: 16),
              ProductCard(
                title: 'Firebase',
                description: 'The best cloud database',
                imagePath: 'assets/w4-s1/firebase.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}