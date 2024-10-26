import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:dob_input_field/dob_input_field.dart';

class RegistrationPage extends StatefulWidget {

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController confirmPassword = TextEditingController();

  final TextEditingController cell = TextEditingController();

  final TextEditingController address = TextEditingController();

  final DateTimeFieldPickerPlatform dob = DateTimeFieldPickerPlatform.material;

  String? selectedGender;

  final _formKey = GlobalKey<FormState>();

  void _register() {
    if (_formKey.currentState!.validate()) {


      String uName = name.text;
      String uEmail = email.text;
      String uPassword = password.text;



      // Registration logic goes here (e.g., sending data to server)

      print('Name: $uName, Email: $uEmail, Password: $uPassword');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Registration Form",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            TextField(
              controller: name,
              decoration: InputDecoration(
                label: Text("Full Name"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              controller: email,
              decoration: InputDecoration(
                label: Text("Email"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              controller: password,
              decoration: InputDecoration(
                label: Text("Password"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              controller: confirmPassword,
              decoration: InputDecoration(
                label: Text("Rewrite Password"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              controller: cell,
              decoration: InputDecoration(
                label: Text("Contact Number"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              controller: address,
              decoration: InputDecoration(
                label: Text("Permenent Address"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.home),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            DateTimeFormField(
              decoration: const InputDecoration(labelText: 'Date of Birth'),
              mode: DateTimeFieldPickerMode.date,
              pickerPlatform: dob,
              onChanged: (DateTime? value) {
                print(value);
              },
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text('Gender:'),
                Expanded(
                  child: Row(
                    children: [
                      Radio<String>(
                        value: 'Male',
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      Text('Male'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio<String>(
                        value: 'Female',
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio<String>(
                        value: 'Other',
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState((){
                            selectedGender = value;
                          });
                        },
                      ),
                      Text('Other'),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                _register();
              },
              child: Text("Registration",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 14
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
              ),
            )
          ],
        ),
      ),
    );
  }
}
