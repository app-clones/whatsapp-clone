import "package:flutter/material.dart";
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/data.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0",
                ),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(
                data[0]["name"].toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: greyColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: greyColor),
            ),
          ]),
        ],
      ),
    );
  }
}
