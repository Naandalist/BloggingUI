import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CreatePostScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create a Post',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          // color: Colors.grey,
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    hintText: 'What is flutter?',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: descController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    hintText:
                        'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. In this codelab, you\'ll create a simple chat application for Android, iOS, and (optionally) the web.',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 20,
                  maxLines: 25,
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
                    color: Colors.orange,
                    child: Text(
                      'Publish',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
        ));
  }
}
