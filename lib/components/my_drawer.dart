import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), child: const SizedBox.expand(),),
        Drawer(
          shape: const LinearBorder(),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 35),
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: const Image(
                    height: 150,
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/122164427?s=400&u=d4a22ee156dbd3d5e6224db222da1c2f1c56d230&v=4'),
                )),
                const SizedBox(height: 8),
                const Text('Jainam Doshi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text('+91 9303041034', style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.tertiary)),
                const SizedBox(height: 35),
              ],
            ),
          ),
        )
      ],
    );
  }
}
