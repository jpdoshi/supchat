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
        BackdropFilter(filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), child: const SizedBox.expand(),),
        Drawer(
          elevation: 0,
          shape: const LinearBorder(),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 35),
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
                        right: 4,
                        bottom: 4,
                        child: Container(
                          height: 30,
                          width: 30,
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
                const Text('Jainam Doshi', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                Text('+91 9303041034', style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.secondary)),
                const SizedBox(height: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Profile Settings');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_outlined, size: 24),
                            SizedBox(width: 20),
                            Text('Profile', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Account Settings');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.account_circle_outlined, size: 24),
                            SizedBox(width: 20),
                            Text('Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Saved Messages');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.bookmark_border_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Saved Messages', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Privacy Settings');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Privacy', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Storage Settings');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.data_usage_outlined, size: 24),
                            SizedBox(width: 20),
                            Text('Your Data', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('Help Settings');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.help_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('Need Help?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
                    GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print('More Info');
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30),
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.info_outline_rounded, size: 24),
                            SizedBox(width: 20),
                            Text('More Info', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: Theme.of(context).colorScheme.tertiary),
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
