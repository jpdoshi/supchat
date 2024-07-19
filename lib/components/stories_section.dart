import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
              print('story for this user');
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: const Image(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/122164427?s=400&u=d4a22ee156dbd3d5e6224db222da1c2f1c56d230&v=4'),
                        height: 70,
                    )),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff007AFF),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.add, color: Colors.white,
                              size: 18,
                            ),
                          ))
                    )
                  ]),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('Add Story',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13)),
                )
              ],
            ),
          ),
        ) :
        GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print('show story for index: $index');
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: const Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                      height: 70,
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('Jon Snow',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13)),
                )
              ],
            ),
          ),
        );
      }),
);
