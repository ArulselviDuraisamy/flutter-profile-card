import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurple[50], 
        appBar: AppBar(
          title: const Text('My Profile', style: TextStyle(fontWeight: FontWeight.w600)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 380), 
            child: const ProfileCard(),
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 6,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple.withValues(alpha: 0.15),
              ),
              child: const CircleAvatar(
                radius: 48,
                backgroundColor: Colors.deepPurple,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80',
                ),
              ),
            ),
            const SizedBox(height: 20),
          
            const Text(
              'Arulselvi D',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, letterSpacing: -0.5),
            ),
            const SizedBox(height: 4),
            Text(
              'FLUTTER INTERN',
              style: TextStyle(
                fontSize: 14, 
                color: Colors.deepPurple, 
                fontWeight: FontWeight.w600, 
                letterSpacing: 1.5
              ),
            ),
            const SizedBox(height: 24),
            const Divider(thickness: 1, height: 1, color: Colors.black12),
            const SizedBox(height: 24),
          
            const ContactRow(icon: Icons.email_outlined, text: 'arul@example.com'),
            const ContactRow(icon: Icons.phone_outlined, text: '+91 9876543210'),
            const ContactRow(icon: Icons.location_on_outlined, text: 'TamilNadu, India'),
          ],
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepPurple.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 22, color: Colors.deepPurple),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
