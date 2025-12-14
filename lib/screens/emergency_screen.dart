import 'package:flutter/material.dart';
import 'emergency_screen.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _EmergencyTile(
            title: 'Police',
            number: '100',
            icon: Icons.local_police,
          ),
          _EmergencyTile(
            title: 'Ambulance',
            number: '108',
            icon: Icons.local_hospital,
          ),
          _EmergencyTile(
            title: 'Fire Brigade',
            number: '101',
            icon: Icons.fire_truck,
          ),
          _EmergencyTile(
            title: 'Women Helpline',
            number: '181',
            icon: Icons.woman,
          ),
        ],
      ),
    );
  }
}

class _EmergencyTile extends StatelessWidget {
  final String title;
  final String number;
  final IconData icon;

  const _EmergencyTile({
    required this.title,
    required this.number,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child:ListTile(
  leading: Icon(icon, color: Colors.red),
  title: Text(title),
  subtitle: Text('Call $number'),
  trailing: const Icon(Icons.call),
  onTap: () {
    // call action
     },
    ), 
   }
  }
 
