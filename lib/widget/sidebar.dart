// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:klinik_app/ui/beranda.dart';
import 'package:klinik_app/ui/login.dart';
import 'package:klinik_app/ui/poli_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@admin.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Beranda()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.accessible),
            title: const Text("Poli"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PoliPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Pegawai"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.account_box_sharp),
            title: const Text("Pasien"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text("Keluar"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                  (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}
