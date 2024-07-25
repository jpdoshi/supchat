import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
        surfaceTintColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print('show profille for this contact');
                    }
                  },
                  child: Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.67),
                    child: Center(
                      child: Row(
                        children: [
                          const Spacer(),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: const Image(
                                image: NetworkImage(
                                  'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                                height: 32,
                              )),
                              Positioned(
                                right: -2,
                                bottom: -2,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.surface,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: iosGreen,
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                    ),
                                  ),
                                )),
                            ]
                          ),
                          const SizedBox(width: 12),
                          Container(
                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.67 - 24),
                            child: Text(
                              'Robert Baratheon',
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              )),
                          ),
                          const Spacer()
                        ],
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: PopupMenuButton(
              offset: const Offset(0, 52),
              elevation: 0,
              itemBuilder: (_) => <PopupMenuItem<InkWell>>[
                PopupMenuItem(child: InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.archive_outlined, size: 22, color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 12),
                      Text('Archive Chat', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        color: Theme.of(context).colorScheme.primary
                      )),
                    ],
                  ),
                ), onTap: () {

                }),
                PopupMenuItem(child: InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border_rounded, size: 22, color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 12),
                      Text('Mark Favorite', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary
                      )),
                    ],
                  ),
                ), onTap: () {

                }),
                PopupMenuItem(child: InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.remove_circle_outline_rounded, size: 22, color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 12),
                      Text('Delete Chat', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary
                      )),
                    ],
                  ),
                ), onTap: () {

                }),
                PopupMenuItem(child: InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.more_horiz_rounded, size: 22, color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 12),
                      Text('More Options', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary
                      )),
                    ],
                  ),
                ), onTap: () {

                }),
              ],
              icon: const Icon(Icons.more_vert_rounded),
            )
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
