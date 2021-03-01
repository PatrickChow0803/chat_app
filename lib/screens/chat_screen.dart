import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: EdgeInsets.all(10),
          child: Text('This Works'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chats/fO5XNCegkgRC5e5dyWPa/messages')
              .snapshots()
              .listen((event) {
            event.docs.forEach((element) {
              print(element['text']);
            });
          });
        },
      ),
    );
  }
}
