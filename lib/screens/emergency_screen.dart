import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  Future<void> _callNumber(String number) async {
    final Uri uri = Uri(scheme: 'tel', path: number);

    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint('Call failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _tile('Police', '100', Icons.local_police),
          _tile('Ambulance', '108', Icons.local_hospital),
          _tile('Fire Brigade', '101', Icons.fire_truck),
          _tile('Women Helpline', '181', Icons.woman),
        ],
      ),
    );
  }

  Widget _tile(String title, String number, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.red),
        title: Text(title),
        subtitle: Text('Call $number'),
        trailing: const Icon(Icons.call),
        onTap: () => _callNumber(number),
      ),
    );
  }
}
