import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final item;
  const DetailScreen({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
    );
  }
}
