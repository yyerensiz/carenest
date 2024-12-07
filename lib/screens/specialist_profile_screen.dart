import 'package:flutter/material.dart';

class SpecialistProfileScreen extends StatelessWidget {
  final String name;
  final String category;
  final double rating;

  const SpecialistProfileScreen({
    required this.name,
    required this.category,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Category: $category'),
            SizedBox(height: 10),
            Text('Rating: $rating'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle service request
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Service Requested!')),
                );
              },
              child: Text('Request Service'),
            ),
          ],
        ),
      ),
    );
  }
}
