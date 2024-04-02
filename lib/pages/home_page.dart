import 'package:flutter/material.dart';
import 'package:whatsapp/pages/actu_page.dart';
import 'package:whatsapp/pages/appbar.dart';
import 'package:whatsapp/pages/calls_page.dart';
import 'package:whatsapp/pages/communaut%C3%A9_page.dart';
import 'package:whatsapp/pages/discution_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: [
        const DiscutionPage(),
        const Actus(),
        const Communaute(),
        const CallsPage()
      ][_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        backgroundColor: Colors.white,
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(Icons.message_rounded), label: "Discution"),
          NavigationDestination(
              icon: Icon(Icons.add_circle_outline_rounded), label: "Actus"),
          NavigationDestination(
              icon: Icon(Icons.person_4_sharp), label: "Communauté"),
          NavigationDestination(
              icon: Icon(Icons.call_outlined), label: "Appels")
        ],
        indicatorColor: Colors.grey,
        onDestinationSelected: (value) {
          setCurrentIndex(value);
        },
      ),
      floatingActionButton: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 58, 150, 81),
          child: const Icon(
            Icons.sms,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 58, 150, 81),
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
        null,
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 58, 150, 81),
          child: const Icon(
            Icons.add_call,
            color: Colors.white,
          ),
        ),
      ][_currentIndex],
    );
  }
}
