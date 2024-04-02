import 'package:flutter/material.dart';

NavigationBar bottomNavBar(int currentIdex) {
  return NavigationBar(
    backgroundColor: Colors.white,
    destinations: const <Widget>[
      NavigationDestination(
          icon: Icon(Icons.message_rounded), label: "Discution"),
      NavigationDestination(
          icon: Icon(Icons.add_circle_outline_rounded), label: "Actus"),
      NavigationDestination(
          icon: Icon(Icons.person_4_sharp), label: "Communauté"),
      NavigationDestination(icon: Icon(Icons.call_outlined), label: "Appels")
    ],
    indicatorColor: Colors.grey,
    onDestinationSelected: (value) {},
  );
}
