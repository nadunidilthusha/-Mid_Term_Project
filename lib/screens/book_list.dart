import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Book(
              coverImagePath: 'assets/images/images.jpg',
              title: 'Rich Dad, Poor Dad',
              author: 'Robert T. Kiyosaki',
              price: 1250,
            ),
            Book(
              coverImagePath: 'assets/images/images (1).jpg',
              title: 'The Alchemist',
              author: 'Paulo Coelho',
              price: 1000,
            ),
            Book(
              coverImagePath: 'assets/images/images (2).jpg',
              title: 'Men are from Mars',
              author: 'John Gray',
              price: 900,
            ),
          ],
        ),
      ),
    );
  }
}
