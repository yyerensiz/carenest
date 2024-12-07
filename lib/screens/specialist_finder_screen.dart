import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SpecialistFinderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Specialists'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('specialists').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final specialists = snapshot.data!.docs;

          return ListView.builder(
            itemCount: specialists.length,
            itemBuilder: (context, index) {
              var specialist = specialists[index];
              return ListTile(
                title: Text(specialist['name']),
                subtitle: Text(specialist['category']),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to the SpecialistProfileScreen with arguments
                  Navigator.pushNamed(
                    context,
                    '/specialist_profile',
                    arguments: {
                      'name': specialist['name'],
                      'category': specialist['category'],
                      'rating': specialist['rating'],
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
