import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:date_field/date_field.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController cell = TextEditingController();
  final TextEditingController address = TextEditingController();
  final DateTimeFieldPickerPlatform dob = DateTimeFieldPickerPlatform.material;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 400, top: 20, right: 400, bottom: 20),
        child: SingleChildScrollView(
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                        labelText: 'Write your password',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.password)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: confirmPassword,
                    decoration: InputDecoration(
                        labelText: 'Rewrite your password',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.password)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: cell,
                    decoration: InputDecoration(
                        labelText: 'Contuct Number',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.phone)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: address,
                    decoration: InputDecoration(
                        labelText: 'Present Address',
                        border: UnderlineInputBorder(),
                        prefixIcon: Icon(Icons.maps_home_work_rounded)),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
