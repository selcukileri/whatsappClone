import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeData.length,
      itemBuilder: (context, index) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(fakeData[index].avatarUrl!),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fakeData[index].name!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  fakeData[index].time!,
                  style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                fakeData[index].message!,
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
