import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mova/pages/create_your_account.dart';
import 'package:mova/pages/home_page.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 26, 32), elevation: 0),
      body: Container(
        color: Color.fromARGB(255, 25, 26, 32),
        width: double.infinity,
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "images/loginPage1.png",
              height: 250,
              width: 250,
            ),
            Text(
              "Let's You in",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton.icon(
                label: Text("Contiune with Facebook"),
                icon: Icon(Icons.facebook),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 31, 33, 39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton.icon(
                label: Text("Contiune with Google"),
                icon: Icon(Icons.account_box),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 31, 33, 39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton.icon(
                label: Text("Contiune with Apple"),
                icon: Icon(Icons.apple),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 31, 33, 39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  height: 2,
                  thickness: 0.2,
                  indent: 80,
                  endIndent: 10,
                  color: Colors.white,
                ),
                Text(
                  "or",
                  style: TextStyle(color: Colors.white),
                ),
                Divider(
                  height: 2,
                  thickness: 0.2,
                  indent: 10,
                  endIndent: 80,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 240, 6, 6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in with password",
                      style: TextStyle(fontSize: 20),
                    ))),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Sign in",
                        style:
                            TextStyle(color: Color.fromARGB(255, 240, 6, 6)))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
