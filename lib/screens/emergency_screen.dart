import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  Future<void> _callNumber(String number) async {
    final Uri url = Uri(
  scheme: 'tel',
  path: number,
);

await launchUrl(
  url,
  mode: LaunchMode.externalApplication,
);
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
          _emergencyTile('Police', '100', Icons.local_police),
          _emergencyTile('Ambulance', '108', Icons.local_hospital),
          _emergencyTile('Fire Brigade', '101', Icons.fire_truck),
          _emergencyTile('Women Helpline', '181', Icons.woman),
        ],
      ),
    );
  }

  Widget _emergencyTile(String title, String number, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.red),
        title: Text(title),
        subtitle: Text('Call $number'),
        trailing: const Icon(Icons.call),
        onTap: () {
          _callNumber(number);
        },
      ),
    );
  }
}
