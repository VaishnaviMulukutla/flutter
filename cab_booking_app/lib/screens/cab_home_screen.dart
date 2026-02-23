import 'package:flutter/material.dart';

class CabHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://ui-avatars.com/api/?name=Vaishnavi&background=673AB7&color=fff'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vaishnavi", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
            Text("ID: RE-3588463", style: TextStyle(color: Colors.grey, fontSize: 11)),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.qr_code_scanner, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Track your cab",
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 25),
            Text("Vehicle Performance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text("Ship-Air-Truck", style: TextStyle(color: Colors.grey, fontSize: 12)),
            SizedBox(height: 20),
            _performanceCard("ID: RE-3588463", "Medium Ship", 0.35, Colors.orange),
            _performanceCard("ID: RE-3588463", "Cargo Air", 0.89, Colors.purple),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Running Shipping", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Icon(Icons.calendar_today_outlined, size: 18, color: Colors.grey),
              ],
            ),
            Text("Cargo Ship", style: TextStyle(color: Colors.grey, fontSize: 12)),
            // Add custom timeline icons here if needed
          ],
        ),
      ),
    );
  }

  Widget _performanceCard(String id, String type, double progress, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(id, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          Text(type, style: TextStyle(color: Colors.grey, fontSize: 11)),
          SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress,
              color: color,
              backgroundColor: color.withOpacity(0.1),
              minHeight: 10,
            ),
          ),
        ],
      ),
    );
  }
}