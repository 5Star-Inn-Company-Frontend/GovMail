import 'package:flutter/material.dart';
import 'package:govmail/email_model/model.dart';

class ReadMessagesTab extends StatefulWidget {
  const ReadMessagesTab({super.key});

  @override
  State<ReadMessagesTab> createState() => _ReadMessagesTabState();
}

class _ReadMessagesTabState extends State<ReadMessagesTab> {
  List<Email> emails = [];

  @override
  void initState() {
    super.initState();
    emails = List.generate(
      4,
      (index) => Email(
        sender: 'Senders Name',
        subject: 'Subject goes here',
        snippet: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        date: 'Mar 1',
        isNew: index == 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: emails.length,
        itemBuilder: (BuildContext context,  index) {
          final email = emails[index];
          return ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                email.sender[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Row(
              children: [
                Text(email.sender),
                if (email.isNew)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      color: Colors.green,
                      child: const Text(
                        '1 new',
                        style: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(email.subject),
                Text(
                  email.snippet,
                  style: const TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(email.date),
                Icon(Icons.star_border, color: Colors.grey[600])
              ],
            ),
          );
        }
      ),
    );
  }
}