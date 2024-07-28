import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supchat/pages/add_chat.dart';

import '../components/chats_section.dart';
import '../components/my_drawer.dart';
import '../components/stories_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showSearchBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),
      appBar: myAppBar(context),
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: myFab(context),
      body: ListView(
          children: [
            const StoriesSection(),
            ChatSection(showSearchBar: showSearchBar),
            const SizedBox(height: 120)
          ]
      ),
    );
  }

  AppBar myAppBar(context) {
    return AppBar(
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
      centerTitle: true,
      title: Text(
        '\'Sup!',
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.w500
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: IconButton(onPressed: () {
            setState(() {
              showSearchBar = !showSearchBar;
            });
          }, icon: SvgPicture.asset('assets/search.svg', height: 20, colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn))),
        ),
      ],
    );
  }

  FloatingActionButton myFab(context) {
    return FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const AddChat()
          ));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: const Icon(Icons.add)
    );
  }
}

