
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_messenger/Model/User.dart';


class Conversation {

  String id;
  String last_message;
  User user;

  Conversation(DataSnapshot snapshot) {
    this.id = snapshot.value["monId"];
    this.last_message = snapshot.value["last_message"];
    user = new User(snapshot);
  }

}