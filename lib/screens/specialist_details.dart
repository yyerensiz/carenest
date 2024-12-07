import 'package:flutter/material.dart';

class SpecialistDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Specialist Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: Jane Doe', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Category: Babysitting'),
            SizedBox(height: 10),
            Text('Rating: 4.8'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Request Service'),
            ),
          ],
        ),
      ),
    );
  }
}
