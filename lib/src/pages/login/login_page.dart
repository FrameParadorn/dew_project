
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
          SizedBox(height: 120),
          _loginPageBtn("สร้างบัญชีผู้ใช้", Icons.mode_outlined, Colors.green),
          _loginPageBtn("เข้าสู่ระบบ", Icons.login_outlined, Colors.pinkAccent),
        ]
      )
    );
  }

  OutlineButton _loginPageBtn(title, icon, color) {
    return OutlineButton(
          onPressed: () {},
          child: Container(
            width: 150,
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