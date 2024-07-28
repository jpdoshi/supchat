import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supchat/styles/colors.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return storiesList;
  }
}


SizedBox storiesList = SizedBox(
  height: 120,
  child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      itemCount: 5 + 1, // length + 1
      itemBuilder: (context, index) {
        --index;
        return (index == -1) ?
        GestureDetector(
          onTap: () {
            if (kDebugMode) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 400),
                    content: Text('story for this user', style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                    )),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ));
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(66),
                        child: const Image(
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/122164427?s=400&u=d4a22ee156dbd3d5e6224db222da1c2f1c56d230&v=4'),
                          height: 66,
                      )),
                      Positioned(
                          right: -1,
                          bottom: -1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).colorScheme.surface,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: iosBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Icon(
                                    Icons.add, color: Colors.white,
                                    size: 13
                                  ),
                                )),
                            ),
                          )
                      )
                    ]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('Add Story',
                    style: TextStyle(fontSize: 12)),
                )
              ],
            ),
          ),
        ) :
        GestureDetector(
          onTap: () {
            if (kDebugMode) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 400),
                    content: Text('show story for index: $index', style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                    )),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ));
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            transform: const GradientRotation(45),
                            colors: [Colors.amber.shade200, Colors.amber.shade600]
                          ),
                          borderRadius: BorderRadius.circular(80)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(80)
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(66),
                        child: const Image(
                          image: NetworkImage(
                              'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                        height: 66,
                        )),
                      ),
                    )
                  ]
                ),
                const Text('Jon Snow',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 12)
                )
              ],
            ),
          ),
        );
      }),
);
