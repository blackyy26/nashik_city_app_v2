import 'package:flutter/material.dart';
import 'emergency_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nashik City App'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: const [
          _HomeItem(title: 'Emergency', icon: Icons.local_hospital),
          _HomeItem(title: 'Places', icon: Icons.place),
          _HomeItem(title: 'Notices', icon: Icons.notifications),
          _HomeItem(title: 'Settings', icon: Icons.settings),
        ],
      ),
    );
  }
}

class _HomeItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _HomeItem({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (title == 'Emergency') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EmergencyScreen(),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
