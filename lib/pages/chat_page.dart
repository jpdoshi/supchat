import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.75),
        surfaceTintColor: Theme.of(context).colorScheme.surface.withOpacity(0.75),
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
              constraints: const BoxConstraints(minWidth: 180),
              offset: const Offset(0, 56),
              elevation: 32,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              shadowColor: Colors.black.withOpacity(0.2),
              itemBuilder: (context) => [
                PopupMenuItem(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                ),
                PopupMenuItem(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                ),
                PopupMenuItem(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                ),
                PopupMenuItem(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                )
              ],
              icon: const Icon(Icons.more_vert_rounded),
            )
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.teal.shade200,
                  borderRadius: BorderRadius.circular(8)),
                child: const Text('some message')
              );
            }
          ),
          Positioned(
            bottom: 0,
            child: SafeArea(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width - (102),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: TextField(
                              style: TextStyle(color: Theme.of(context).colorScheme.primary),
                              decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                              hintText: 'Send Message...',
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.4)
                              ),
                              filled: true,
                              fillColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.75),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none
                              )
                            )),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: PopupMenuButton(
                            constraints: const BoxConstraints(maxWidth: 132),
                            elevation: 32,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            shadowColor: Colors.black.withOpacity(0.2),
                            offset: const Offset(8, -172),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.attach_file_outlined, size: 22, color: Theme.of(context).colorScheme.primary),
                                    const SizedBox(width: 12),
                                    Text('Docs', style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Theme.of(context).colorScheme.primary
                                    )),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.play_circle_outline_rounded, size: 22, color: Theme.of(context).colorScheme.primary),
                                    const SizedBox(width: 12),
                                    Text('Gallery', style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Theme.of(context).colorScheme.primary
                                    )),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.audiotrack_outlined, size: 22, color: Theme.of(context).colorScheme.primary),
                                    const SizedBox(width: 12),
                                    Text('Audio', style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Theme.of(context).colorScheme.primary
                                    )),
                                  ],
                                ),
                              ),
                            ],
                            child: Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(36),
                                color: Theme.of(context).colorScheme.primary
                              ),
                              child: Icon(Icons.add, color: Theme.of(context).colorScheme.surface, size: 22),
                            ),
                          ),
                        )
                      ]
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(onPressed: () {},
                        icon: Transform.translate(
                          offset: const Offset(2, 0),
                          child: SvgPicture.asset('assets/send.svg',
                            height: 28, width: 28,
                            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn
                        )),
                  )))
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
