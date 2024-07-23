import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/colors.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Text('Actions', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17
          )),
        ),
        SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                if (kDebugMode) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(milliseconds: 400),
                        content: Text('add contact', style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                        )),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                      ));
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(
                        Icons.person_add_alt_outlined,
                        color: Theme.of(context).colorScheme.surface,
                        size: 20,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text('Add Contact', maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
        SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                if (kDebugMode) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(milliseconds: 400),
                        content: Text('add group', style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                        )),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                      ));
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(
                        Icons.group_add_outlined,
                        color: Theme.of(context).colorScheme.surface,
                        size: 20,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Text('Add Group', maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Contacts', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
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
                hintText: 'Search Contacts',
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
        contactsList,
        const SizedBox(height: 80)
      ],
    );
  }
}

ListView contactsList = ListView.builder(
    itemCount: 20,
    primary: false,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return SizedBox(
          height: 64,
          child: InkWell(
            onTap: () {
              if (kDebugMode) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 400),
                      content: Text('add chat for index: $index', style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                      )),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(46),
                              child: const Image(
                                image: NetworkImage(
                                    'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg'),
                                height: 46,
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
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Robert Baratheon', maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 17)),
                    ),
                  ),
                ],
              ),
            ),
          )
      );
    }
);
