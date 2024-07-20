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
    itemCount: 10,
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
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: const Image(
                          image: NetworkImage(
                            'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                          height: 50,
                      )),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff34C759),
                                borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                          ),
                      ))
                    ]
                  ),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Robert Baratheon', maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(height: 2.5),
                      Text('Robert: pick me up from school', maxLines: 1, overflow: TextOverflow.fade, softWrap: false,
                          style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 14)),
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Yesterday', style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.secondary
                      )),
                      const SizedBox(height: 6),
                      if (index < 3) // show only on chats with unread messages
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff34C759),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                            child: Text(
                              '99+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        )
                  ]),
                )
              ],
            ),
          )
      );
    }
);
