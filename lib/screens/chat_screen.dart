import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('chats/fO5XNCegkgRC5e5dyWPa/messages')
              .snapshots(),
          builder: (context, streamSnapshot) {
            // the data from streamSnapshot isn't their from the start, thus causing an error
            // initially when the request is sent, no data is there yet
            // therefore display a loading indicator while waiting for data to come in
            if (streamSnapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final documents = streamSnapshot.data.docs;
            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (ctx, index) => Container(
                padding: EdgeInsets.all(10),
                child: Text(documents[index]['text']),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chats/fO5XNCegkgRC5e5dyWPa/messages')
              .add({'text': 'Message added by clicking on the button'});
        },
      ),
    );
  }
}
