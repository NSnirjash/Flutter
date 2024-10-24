import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),

            SizedBox(
              height: 20
            ),

            TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(Icons.password)
              ),
              obscureText: true,
            ),

            SizedBox(
                height: 20
            ),

            ElevatedButton(
                onPressed: () {
                  String em = email.text;
                  String pass = password.text;
                  print('Enail: $em,\nPassword: $pass');
                },
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                   fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent
                ),
            )

          ],
        ),
      ),
    );
  }
}
