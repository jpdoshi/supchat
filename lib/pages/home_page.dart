import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supchat/components/chat_section.dart';
import 'package:supchat/components/my_drawer.dart';
import 'package:supchat/components/stories_section.dart';

List<String> filterList = ['All', 'New', 'Archived', 'Favorites'];
int filterIndex = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
        surfaceTintColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
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
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: IconButton(onPressed: () {
              if (kDebugMode) {
                print('show search bar');
              }
            }, icon: SvgPicture.asset('assets/search.svg', height: 20, color: Theme.of(context).colorScheme.primary)),
          ),

        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode)  {
            print('Add Chat');
          }
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: ListView(
          children: [
            const StoriesSection(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              child: Wrap(
                spacing: 8,
                children: List.generate(filterList.length, (index) {
                  return ChoiceChip(
                    elevation: 2,
                    showCheckmark: false,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color:
                        (index == filterIndex) ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.tertiary
                    )),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    label: Text(
                      filterList[index],
                      style: TextStyle(
                        color: (index == filterIndex) ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary,
                        fontSize: 13
                      ),
                    ),
                    selected: filterIndex == index,
                    selectedColor: Theme.of(context).colorScheme.primary,
                    onSelected: (value) {
                      setState(() {
                        filterIndex = index;
                        if (kDebugMode) {
                          print('Filter for: ${filterList[index]}');
                        }
                      });
                    },
                  );
                }),
              ),
            ),
            const ChatSection(),
            const SizedBox(height: 120)
          ]
      ),
    );;
  }
}

