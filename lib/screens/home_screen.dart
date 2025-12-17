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
        children: [
          HomeItem(
            title: 'Emergency',
            icon: Icons.local_hospital,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmergencyScreen(),
                ),
              );
            },
          ),
          HomeItem(
            title: 'Places',
            icon: Icons.place,
            onTap: () {},
          ),
          HomeItem(
            title: 'Notices',
            icon: Icons.notifications,
            onTap: () {},
          ),
          HomeItem(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class HomeItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const HomeItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
