
import 'package:dew_project/src/pages/home/widget/bottomNavBar.dart';
import 'package:dew_project/src/pages/home/widget/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ฟีดงานล่าสุด")),
      drawer: BuildDrawer(),
      body: _buildBody(),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }

  _buildBody() {
    return ListView(
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("รายงานที่สามารถรับได้", style: TextStyle(color: Colors.grey[500])),
          ],
        ),
        SizedBox(height: 10),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard(),
        _buildCard()
      ],
    );
  }

  Card _buildCard() {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Text("10  ม.ค. 2563   10:00 น.", style: TextStyle(color: Colors.green)),
              SizedBox(height: 5),
              Text(
                "Bangkok - Korat", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
              ),
              SizedBox(height: 5),
              Text("รายงานที่สามารถรับได้", style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
      );
  }

  

}