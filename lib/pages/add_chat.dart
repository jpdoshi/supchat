import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../components/contacts_section.dart';

class AddChat extends StatelessWidget {
  const AddChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          'Add Chat',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: IconButton(
                onPressed: () {
              if (kDebugMode) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 400),
                      content: Text('sync contacts', style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                      )),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                    ));
              }
            }, icon: const Icon(Icons.sync, size: 24)),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const ContactsSection(),
    );
  }
}
