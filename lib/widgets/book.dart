import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const Book({
    Key? key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsScreen(
              coverImagePath: coverImagePath,
              title: title,
              author: author,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                author,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Image.asset(
                coverImagePath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Rs. $price',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      print('Added $title to cart');
                    },
                    child: Text('Add to cart'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const BookDetailsScreen({
    Key? key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                coverImagePath,
                height: 200,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                author,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Rs. $price',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


