import 'package:flutter/material.dart';

class FavoriteCards extends StatefulWidget {
  const FavoriteCards({super.key});

  @override
  _FavoriteCardsState createState() => _FavoriteCardsState();
}

class _FavoriteCardsState extends State<FavoriteCards> {
  List<Map<String, dynamic>> cards = [
    {
      'title': 'title',
      'description': 'description',
      'isFavorite': true,
    },
    {
      'title': 'title',
      'description': 'description',
      'isFavorite': false,
    },
    {
      'title': 'title',
      'description': 'description',
      'isFavorite': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cards[index]['title']),
                            const SizedBox(height: 8),
                            Text(cards[index]['description']),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          cards[index]['isFavorite']
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: cards[index]['isFavorite']
                              ? Colors.red
                              : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            cards[index]['isFavorite'] =
                                !cards[index]['isFavorite'];
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
