import 'package:flutter/material.dart';
import 'package:sociable/Pages/Registrasi/registrationPage.dart';

import '../../MainPage.dart';


class LoginPage extends StatefulWidget {
  // const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var obsuced = true;

  var usernameInput;

  var passwordInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

        // resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: 181,
                height: 195,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                autofocus: false,
                onChanged: (ValueKey) {
                  usernameInput = ValueKey;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),

                  hintText: "Username",
                  // labelText: "Username",
                ),
              ),
              TextField(
                // textAlign: TextAlign.center,
                autofocus: false,
                obscureText: obsuced,
                onChanged: (ValueKey) {
                  passwordInput = ValueKey;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      if (obsuced == true) {
                        setState(() {
                          obsuced = false;
                        });
                      } else {
                        setState(() {
                          obsuced = true;
                        });
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Builder(
                builder: (context) => Container(
                  width: 155,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(53),

                  ),
                  child: FlatButton(
                    child: Text("Masuk",style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                  ),
                ),
              ),

              Builder(
                builder: (context) => Center(
                  child: FlatButton(
                    child: Text("Belum Punya Akun?"),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RegistrationPage();
                      }));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}