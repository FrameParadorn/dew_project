
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body()
    );
  }
      
  _appBar() {
    return AppBar(
      leading: Icon(Icons.login),
      title: Text("เข้าสู่ระบบ"),
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png", width: 200,),
          SizedBox(height: 30),
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
            margin: const EdgeInsets.all(10),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _loginPageBtn("สร้างบัญชีผู้ใช้", Icons.mode_outlined, Colors.green),
              SizedBox(width: 10),
              _loginPageBtn("เข้าสู่ระบบ", Icons.login_outlined, Colors.pinkAccent),
            ],
          ),
        ]
      )
    );
  }

  OutlineButton _loginPageBtn(title, icon, color) {
    return OutlineButton(
          onPressed: () {},
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color),
                SizedBox(width: 3),
                Text(title, style: TextStyle(color: color))
              ],
            ),
          ),
          borderSide: BorderSide(
            color: color,
            width: 2
          ),
        );
  }

}