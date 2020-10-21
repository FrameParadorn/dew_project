import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Register"),
    );
  }

  _buildBody() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 70,),
          Text(
            "เลือกประเภทผู้ใช้งาน", 
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 70,),
          Container(
            width: 250,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(vertical: 40),
              onPressed: () {}, 
              color: Colors.white, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_box, size: 40),
                  Text("ผู้ใช้งาน", style: TextStyle(fontSize: 30)),
                ],
              )
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 250,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.symmetric(vertical: 40),
              onPressed: () {}, 
              color: Colors.white, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.drive_eta, size: 40),
                  Text("คนขับรถ", style: TextStyle(fontSize: 30)),
                ],
              )
            ),
          )
        ]
      ),
    );
  }
}