import 'package:flutter/material.dart';
import 'package:utsmobile/menu.dart';

import 'main.dart';

class LoginPageState extends StatefulWidget {
  const LoginPageState({Key? key}) : super(key: key);

  @override
  State<LoginPageState> createState() => _LoginPageStateState();
}

String username = "";
String password = "";
bool isLoginSucces = true;
bool isHidden = true;

class _LoginPageStateState extends State<LoginPageState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: false,
        body: ListView(
            children: [
              SizedBox(height: 100,),
              Container(
                height: 530,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('Assets/image/login.png'),
                      SizedBox(height: 30,),
                      _usernameField(),
                      _passwordField(),
                      _loginButton(context),
                    ],
                  ),
                ),
              )
        ]
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(

        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSucces) ? Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(

        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: isHidden,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                isHidden = !isHidden;
              });
            },
            child: Icon((isHidden) ? Icons.lock : Icons.lock_open_outlined),
          ),
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSucces) ? Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSucces) ? Colors.blue : Colors.red,
          onPrimary: Colors.white,
        ),
        onPressed: () {

          String text = "";
          if (username == "123200056" && password == "Gilang") {
            setState(() {
              text = "Login Success";
              isLoginSucces = true;
            });

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Menu()
                )
            );
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSucces = false;
            });
          }
          SnackBar snackBar = SnackBar(
            duration: Duration(seconds: 1),
            content: Text(
              text,
            ),
            backgroundColor: (isLoginSucces) ? Colors.blue : Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
      ),
    );
  }
}
