import 'package:flutter/material.dart';
import 'package:chat_app/models/message.dart';

import '../constants.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    required this.message,
  });

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,

          //  mainAxisAlignment:this.type == "sent" ? MainAxisAlignment.end : MainAxisAlignment.start,
          child: Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 32, bottom: 32, right: 32),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                color: kPrimaryColor,
              ),
              child: Column(children: [
                Text(
                  message.message,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '${message.createdAt.toDate().hour}:${message.createdAt.toDate().minute}',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.right,
                  ),
                ),
              ])),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${message.createdAt.toDate().day}/${message.createdAt.toDate().month}/${message.createdAt.toDate().year}',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.right,
            )),
      ],
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({
    super.key,
    required this.message,
  });

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding:
                const EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32),
              ),
              color: Color(0xff006D84),
            ),
            child: Column(
              children: [
                Text(
                  message.message,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '${message.createdAt.toDate().hour}:${message.createdAt.toDate().minute}',
                    style:const TextStyle(fontSize: 12),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${message.createdAt.toDate().day}/${message.createdAt.toDate().month}/${message.createdAt.toDate().year}',
              style:const TextStyle(fontSize: 12),
              textAlign: TextAlign.right,
            )),
      ],
    );
  }
}
