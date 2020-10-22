
import 'package:dew_project/src/pages/home/widget/bottomNavBar.dart';
import 'package:dew_project/src/pages/home/widget/drawer.dart';
import 'package:flutter/material.dart';

class MyJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("ฟีดงานล่าสุด"),
          bottom: TabBar(
            tabs: [
              Tab(child: Text("งานที่ยืนยัน")),
              Tab(child: Text("งานที่เสร็จสิ้น")),
            ],
          ),
        ),
        body: _buildBody(),
        drawer: BuildDrawer(),
        bottomNavigationBar: BottomNavBar(currentIndex: 1,),
      )
    );
  }

  _buildBody() {
    return TabBarView(
      children: [
        ListView(
          children: [
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            SizedBox(height: 20)
          ],
        ),
        ListView(
          children: [
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            _buildCard(),
            SizedBox(height: 20)
          ],
        )
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