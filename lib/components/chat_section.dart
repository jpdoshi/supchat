import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // selectable chips
        chatsList,
      ],
    );
  }
}

ListView chatsList = ListView.builder(
    itemCount: 20,
    primary: false,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          child: GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print('show chat for index: $index');
              }
            },
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print('show profile for index: $index');
                    }
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(
                        image: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                        height: 50,
                      )),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Robert Baratheon', maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 17)),
                      Text('Robert: pick me up from school', maxLines: 1, overflow: TextOverflow.fade, softWrap: false,
                          style: TextStyle(color: Theme.of(context).colorScheme.tertiary, fontSize: 14)),
                    ],
                  ),
                )),
                if (index < 3) // show only on chats with unread messages
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff34C759),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
                      child: Text(
                        '99+',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          )
      );
    }
);
