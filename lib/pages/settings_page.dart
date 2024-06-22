import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
          iconSize: 18,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Support',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Help & Feedback'),
              onTap: () {
                // Tambahkan logika untuk navigasi ke halaman bantuan/umpan balik
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                // Tambahkan logika untuk navigasi ke halaman kontak
              },
            ),
            Divider(),
            Text(
              'Security',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Two-factor Authentication'),
              onTap: () {
                // Tambahkan logika untuk navigasi ke pengaturan otentikasi dua faktor
              },
            ),
            Divider(),
            Text(
              'About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('App Version'),
              subtitle:
                  Text('1.0.0'), // Ganti dengan versi aplikasi yang sesuai
              onTap: () {
                // Tambahkan logika untuk menampilkan informasi versi aplikasi
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Tambahkan logika untuk navigasi ke halaman kebijakan privasi
              },
            ),
            ListTile(
              title: Text('Terms of Service'),
              onTap: () {
                // Tambahkan logika untuk navigasi ke halaman syarat dan ketentuan
              },
            ),
          ],
        ),
      ),
    );
  }
}
