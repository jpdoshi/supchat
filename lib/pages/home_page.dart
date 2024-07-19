import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supchat/components/chat_section.dart';
import 'package:supchat/components/my_drawer.dart';
import 'package:supchat/components/stories_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.75),
        surfaceTintColor: Theme.of(context).colorScheme.surface.withOpacity(0.75),
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        elevation: 0,
        title: Text(
          'Sup!',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            if (kDebugMode) {
              print('show search bar');
            }
          }, icon: SvgPicture.asset('assets/search.svg', height: 20, color: Theme.of(context).colorScheme.primary,)),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {
              if (kDebugMode) {
                print('show menu');
              }
            }, icon: const Icon(Icons.more_horiz)),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode)  {
            print('Add Chat');
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: const [
          StoriesSection(),
          ChatSection(),
          SizedBox(height: 120)
        ]
      ),
    );
  }
}
