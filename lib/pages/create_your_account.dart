import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mova/pages/home_page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool checkboxdeger = false;
  String email = "hasan@hasan.com";
  String sifre = "1234";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 26, 32),
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 25, 26, 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Color.fromARGB(255, 25, 26, 32),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/pngwing.png",
                height: 120,
                width: 120,
              ),
              SizedBox(
                height: 10,
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
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 159, 159, 158),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 158),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onSaved: (String? value) {
                          email != value;
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
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 159, 159, 158),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 159, 159, 158),
                            )
                            // iconColor: Colors.white),
                            ),
                        onSaved: (String? value) {
                          sifre != value;
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
                      style: TextStyle(
                          color: Color.fromARGB(
                        255,
                        159,
                        159,
                        158,
                      )),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 240, 6, 6),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27))),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            if (email == "hasan@hasan.com" && sifre == "1234") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Hata"),
                                      content: Text("Kullanıcı Bilgileriniz Yanlış"),
                                      actions: [MaterialButton(child: Text("Geri Dön"), onPressed: () => Navigator.pop(context))],
                                    );
                                  });
                            }
                          }
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 20),
                        )),
                  )),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.white,
                        height: 36,
                      )),
                ),
                Text("or contiune with",
                    style: TextStyle(
                      color: Color.fromARGB(255, 159, 159, 158),
                    )),
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
              ),
              SizedBox(
                height: 15,
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
