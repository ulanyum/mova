import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool checkboxdeger = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 25, 26, 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Color.fromARGB(255, 25, 26, 32),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "images/pngwing.png",
                height: 160,
                width: 160,
              ),
              Text(
                "Create your account",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: const EdgeInsets.only(left: 20)),
              Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 32, 34, 42),
                            icon: Icon(Icons.mail, color: Colors.white),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onSaved: (String? value) {
                          // This optional block of code can be used to
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Geçerli Bir Mail Adresi Giriniz'
                              : null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 32, 34, 42),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            )
                            // iconColor: Colors.white),
                            ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Şifre kısmı boş geçilemez'
                              : null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: CheckboxListTile(
                    tileColor: Color.fromARGB(255, 240, 6, 6),
                    checkColor: Color.fromARGB(255, 240, 6, 6),
                    activeColor: Color.fromARGB(255, 240, 6, 6),
                    title: Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkboxdeger,
                    onChanged: (bool? veri) {
                      setState(() {
                        checkboxdeger = veri!;
                      });
                    }),
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
                        "Sign up",
                        style: TextStyle(fontSize: 20),
                      ))),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                      )),
                ),
                Text(
                  "or contiune with",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                      )),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kucukCard(Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 35,
                  )),
                  kucukCard(
                    Icon(
                      Icons.grade,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 35,
                    ),
                  ),
                  kucukCard(Icon(
                    Icons.apple,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 35,
                  )),
                ],
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 6, 6)))),
                ],
              )
            ],
          ),
        ));
  }
}

kucukCard(Icon iconum) {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Container(
      color: Color.fromARGB(255, 32, 34, 42),
      width: 70,
      height: 70,
      child: iconum,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 5,
    margin: EdgeInsets.all(10),
  );
}
