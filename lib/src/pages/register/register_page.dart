import 'package:dew_project/src/pages/register/register_information.dart';
import 'package:dew_project/src/pages/register/register_user_type.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: RegisterInformation(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Register"),
    );
  }


}