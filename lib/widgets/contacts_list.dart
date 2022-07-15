import "package:flutter/material.dart";
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/data.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      data[index]["name"].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        data[index]["message"].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(data[index]["profilePic"].toString()),
                      radius: 30,
                    ),
                    trailing: Text(
                      data[index]["time"].toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              ),
            ],
          );
        },
      ),
    );
  }
}
