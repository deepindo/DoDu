import 'package:flutter/material.dart';

class BookshelfPage extends StatefulWidget {
  const BookshelfPage({super.key});

  @override
  State<BookshelfPage> createState() => _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("书架"),
    );
  }
}
