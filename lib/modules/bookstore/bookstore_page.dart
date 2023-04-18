import 'package:flutter/material.dart';

class BookstorePage extends StatefulWidget {
  const BookstorePage({super.key});

  @override
  State<BookstorePage> createState() => _BookstorePageState();
}

class _BookstorePageState extends State<BookstorePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("书城"),
    );
  }
}
