import 'package:flutter/material.dart';

class CabProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Setting", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.settings_outlined, color: Colors.black), onPressed: () {})],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage('https://ui-avatars.com/api/?name=Vaishnavi&background=673AB7&color=fff'),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.edit_outlined, size: 16, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Text("Vaishnavi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("vaishnavi.m@ahex.co.in", style: TextStyle(color: Colors.grey, fontSize: 13)),
              ],
            ),
          ),
          SizedBox(height: 30),
          _settingTile(Icons.person_outline, "Profile details"),
          _settingTile(Icons.language, "Language"),
          _settingTile(Icons.notifications_none, "Notification"),
          _settingTile(Icons.dark_mode_outlined, "Dark mode", hasSwitch: true),
          Divider(height: 40, thickness: 0.5),
          _settingTile(Icons.location_on_outlined, "Location"),
          _settingTile(Icons.lock_outline, "Privacy"),
          _settingTile(Icons.info_outline, "About"),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.05),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.purple),
              title: Text("Log out", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.chevron_right, color: Colors.purple),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingTile(IconData icon, String title, {bool hasSwitch = false}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.black87, size: 22),
      title: Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
      trailing: hasSwitch 
        ? Switch(value: false, activeColor: Colors.purple, onChanged: (v) {}) 
        : Icon(Icons.chevron_right, color: Colors.grey[400]),
    );
  }
}