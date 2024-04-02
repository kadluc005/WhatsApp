import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 58, 150, 81),
    title: Row(
      children: [
        const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 114,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ],
        ),
      ],
    ),
  );
}
