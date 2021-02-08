import 'package:blogging/homeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.orange,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 40),
                    child: Text(
                      'Blogging',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 40),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'e.g. Listiananda Apriliawan',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Valid Email',
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'e.g. nanda@udacoding.com',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        hintText: 'Type at least 6 characters',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    obscureText: true,
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Type at least 6 characters',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      textColor: Colors.blue,
                      color: Colors.white,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        print(fullNameController.text);
                        print(emailController.text);
                        print(passwordController.text);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                    )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                        //signup screen
                      },
                    )
                  ],
                ))
              ],
            )));
  }
}
