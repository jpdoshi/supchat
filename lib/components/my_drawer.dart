import 'dart:ui';
import 'package:flutter/foundation.dart';
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
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40)
          )),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 25),
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
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Profile Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.account_circle_outlined, size: 24),
                            SizedBox(width: 20),
                            Text('My Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Account Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.switch_account_outlined, size: 24),
                            SizedBox(width: 20),
                            Text('Account', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Favorites', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_border_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Favorites', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Privacy Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Privacy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Chat Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.chat_bubble_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Chat Settings', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Storage Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.data_usage_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Data & Storage', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('Help Settings', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.help_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Need Help?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (kDebugMode) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(milliseconds: 400),
                                content: Text('More Info', style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )),
                                backgroundColor: Theme.of(context).colorScheme.surface,
                              ));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 32),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('More Info', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
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
