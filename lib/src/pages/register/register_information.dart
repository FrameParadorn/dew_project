import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterInformation extends StatefulWidget {
  @override
  _RegisterInformationState createState() => _RegisterInformationState();
}

class _RegisterInformationState extends State<RegisterInformation> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
        Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text(
                "ข้อมูลผู้ใช้", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 40,),
              Container(
                width: 300, 
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.account_box)
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300, 
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.lock)
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300, 
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm password",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.lock)
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 15),
                width: 200,
                height: 1,
                color: Colors.grey[300],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300, 
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "ชื่อ - นามสกุล",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.people_alt)
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300, 
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "เบอร์โทรศัพท์",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.phone)
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300, 
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.email)
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                width: 150,
                child: OutlineButton(
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mode_outlined, color: Colors.green),
                        SizedBox(width: 3),
                        Text("สมัครสมาชิก", style: TextStyle(color: Colors.green))
                      ],
                    ),
                  ),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}