import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supchat/styles/colors.dart';

List<String> filterList = ['All', 'Favorites', 'Groups', 'Archived'];
int filterIndex = 0;

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 6,
                      offset: const Offset(0, 1)
                  )],
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    hintText: 'Search Chats',
                    hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.inversePrimary,
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          'assets/search.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none
                    )),
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Wrap(
            spacing: 6,
            children: List.generate(filterList.length, (index) {
              return ChoiceChip(
                showCheckmark: false,
                labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Theme.of(context).colorScheme.surface)
                ),
                backgroundColor: Theme.of(context).colorScheme.tertiary,
                label: Text(
                  filterList[index],
                  style: TextStyle(
                    color: (index == filterIndex) ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    height: 0.4
                  ),
                ),
                selected: filterIndex == index,
                selectedColor: Theme.of(context).colorScheme.primary,
                onSelected: (value) {
                  setState(() {
                    filterIndex = index;
                    if (kDebugMode) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(milliseconds: 400),
                          content: Text('Filter for: ${filterList[index]}', style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          )),
                          backgroundColor: Theme.of(context).colorScheme.surface,
                      ));
                    }
                  });
                },
              );
            }),
          ),
        ),
        chatsList,
      ],
    );
  }
}


ListView chatsList = ListView.builder(
    itemCount: 10,
    primary: false,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return SizedBox(
          height: 80,
          child: InkWell(
            onTap: () {
              if (kDebugMode) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 400),
                      content: Text('show chat for index: $index', style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                      )),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ));
              }
            },
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                  )),
                  builder: (context) {
                return SizedBox(
                  height: 240,
                  child: Column(
                          children: [
                            Center(
                              heightFactor: 8,
                              child: Container(
                                height: 4,
                                width: 60,
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              height: 48,
                              child: InkWell(
                                onTap: () {
                                  if (kDebugMode) {
                                    print('favorite chat index: $index');
                                  }
                                },
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 32),
                                      child: Row(
                                        children: [
                                          Icon(Icons.favorite_border_rounded, size: 24),
                                          SizedBox(width: 20),
                                          Text('Mark Favorite', style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 48,
                              child: InkWell(
                                onTap: () {
                                  if (kDebugMode) {
                                    print('delete chat index: $index');
                                  }
                                },
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 32),
                                      child: Row(
                                        children: [
                                          Icon(Icons.remove_circle_outline_rounded, size: 24),
                                          SizedBox(width: 20),
                                          Text('Delete Chat', style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 48,
                              child: InkWell(
                                onTap: () {
                                  if (kDebugMode) {
                                    print('archive chat index: $index');
                                  }
                                },
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 32),
                                      child: Row(
                                        children: [
                                          Icon(Icons.archive_outlined, size: 24),
                                          SizedBox(width: 20),
                                          Text('Archive Chat', style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                  ),
                );
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: const Duration(milliseconds: 400),
                              content: Text('show profile for index: $index', style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary
                              )),
                              backgroundColor: Theme.of(context).colorScheme.surface,
                            ));
                      }
                    },
                    child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: const Image(
                                image: NetworkImage(
                                    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                                height: 50,
                              )),
                          Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: iosGreen,
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                ),
                              ))
                        ]
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Robert Baratheon', maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 17)),
                        const SizedBox(height: 3),
                        Text('Robert: pick me up from school', maxLines: 1, overflow: TextOverflow.fade, softWrap: false,
                            style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 14)),
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Yesterday', style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.primary.withOpacity(0.8)
                          )),
                          const SizedBox(height: 5),
                          if (index < 3) // show only on chats with unread messages
                            Container(
                              decoration: BoxDecoration(
                                  color: iosGreen,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                                child: Text(
                                  '99+',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            )
                        ]),
                  )
                ],
              ),
            ),
          )
      );
    }
);