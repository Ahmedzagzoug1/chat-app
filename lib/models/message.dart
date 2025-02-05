import 'package:chat_app/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String message;
  final String id;
  final Timestamp createdAt;
  Message(this.message, this.id,this.createdAt);

  factory Message.fromJson(jsonData) {
    return Message(jsonData[kMessage], jsonData['id'],jsonData[kCreatedAt]);
  }
}
