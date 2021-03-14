import 'package:flutter/material.dart';
import 'package:quick/models/services.dart';

class ServiceDetailScreen extends StatelessWidget {
  final Service service;
  const ServiceDetailScreen({this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.title),
      ),
      body: Container(
        child: Text(service.description),
      ),
    );
  }
}
