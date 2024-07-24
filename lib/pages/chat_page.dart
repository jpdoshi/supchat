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
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5 - (32 + 12),
                            child: Text(
                                'Robert Baratheon',
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500
                                ))
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              if (kDebugMode) {
                print('show search bar');
              }
            },
            icon: SvgPicture.asset('assets/search.svg', height: 20,
              colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn))),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: IconButton(
              onPressed: () {
                if (kDebugMode) {
                  print('show menu');
                }
              },
              icon: const Icon(Icons.more_horiz_rounded),
            )
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
