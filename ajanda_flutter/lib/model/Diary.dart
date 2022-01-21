import 'package:cloud_firestore/cloud_firestore.dart';

// yeni görev içeriği

class Diary {
  final String? id;
  final String? userId;
  final String? title;
  final String? author;
  final Timestamp? entryTime;
  final String? entry;

  Diary(
      {this.id,
      this.userId,
      this.title,
      this.author,
      this.entryTime,
      this.entry});

  factory Diary.fromDocument(QueryDocumentSnapshot data) {
    return Diary(
        id: data.id,
        userId: data.get('user_id'),
        author: data.get('author'),
        entryTime: data.get('entry_time'),
        title: data.get('title'),
        entry: data.get('entry'));
  }

  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'title': title,
      'author': author,
      'entry': entry,
      'entry_time': entryTime,
    };
  }
}
