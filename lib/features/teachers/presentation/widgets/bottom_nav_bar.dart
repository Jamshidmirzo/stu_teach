import 'package:flutter/material.dart';
import 'package:stu_teach/features/teachers/presentation/pages/see_students_screen.dart';
import 'package:stu_teach/features/teachers/presentation/pages/task_screen.dart';

class BottomNavBar extends StatefulWidget {
  final String userRole;
  const BottomNavBar({super.key, required this.userRole});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Widget> pages; 

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      TaskScreen(userRole: widget.userRole), 
      const SeeStudentsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_3), label: ''),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
