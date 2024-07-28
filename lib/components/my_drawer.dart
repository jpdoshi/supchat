import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supchat/styles/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), child: const SizedBox.expand()),
        Drawer(
          shape: const LinearBorder(),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: const Image(
                          height: 150,
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/122164427?s=400&u=d4a22ee156dbd3d5e6224db222da1c2f1c56d230&v=4'),
                      )),
                      Positioned(
                        right: 6,
                        bottom: 6,
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(32)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: iosGreen,
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                          ),
                      ))
                    ]
                ),
                const SizedBox(height: 6),
                const Text('Jainam Doshi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('+91 9303041034', style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.secondary)),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint('Profile Settings');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(36)
                                ),
                                child: const Icon(Icons.account_circle_outlined, size: 25)
                            ),
                            const SizedBox(width: 20),
                            const Text('My Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Show Contacts');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(36)
                                ),
                                child: const Icon(Icons.contacts_outlined, size: 22)
                            ),
                            const SizedBox(width: 20),
                            const Text('Contacts', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Favorite Contacts');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(36)
                                ),
                                child: const Icon(Icons.favorite_border_rounded, size: 23)
                            ),
                            const SizedBox(width: 20),
                            const Text('Favorites', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Saved Messages');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(36)
                                ),
                                child: const Icon(Icons.chat_bubble_outline_rounded, size: 20)
                            ),
                            const SizedBox(width: 20),
                            const Text('Saved Chats', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Premium Features');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(36)
                                ),
                                child: const Icon(Icons.star_border_rounded, size: 26)
                            ),
                            const SizedBox(width: 20),
                            const Text('Get Premium', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Settings Page');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 32),
                        height: 54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius: BorderRadius.circular(36)
                              ),
                              child: const Icon(Icons.settings_outlined, size: 24)
                            ),
                            const SizedBox(width: 20),
                            const Text('Settings', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ]
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
