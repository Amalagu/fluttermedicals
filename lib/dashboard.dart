import 'package:flutter/material.dart';
import 'package:medics/pages/page_containers.dart';

class MedicsHome extends StatefulWidget {
  const MedicsHome({super.key});
  @override
  State<MedicsHome> createState() {
    return _MedicsHomeState();
  }
}

class _MedicsHomeState extends State<MedicsHome> {
  int _currentIndex = 0;

  // Define your page widgets here
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 240, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 240, 245),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Summary'),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Two Content'),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Three Content'),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Four Content'),
    );
  }
}
