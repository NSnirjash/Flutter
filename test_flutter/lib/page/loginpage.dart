import 'package:flutter/material.dart';
import 'package:test_flutter/page/registrationpage.dart';

class LoginPage extends StatelessWidget {

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, right: 400, left: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Use Email and Password",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
              ),
            ),

            const SizedBox(
              height: 40,
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
                label: Text("Paassword"),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: (){},
                child: Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 14
                  ),
                ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
            ),

            SizedBox(
                height: 20
            ),

            // Login Text Button
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text(
                'Registration',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
