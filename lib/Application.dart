import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  String title;
  String? email;
  String? password;

  Application({required this.title, this.email, this.password});

  @override
  State<StatefulWidget> createState() {
    return _ApplicationState();
  }
}

class _ApplicationState extends State<Application> {
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your email",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontStyle: FontStyle.normal
                  ),
                  textDirection: TextDirection.ltr,
                ),
                TextField(
                  onChanged: (text) {
                    this.setState(() {
                      _email = text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6)
                      )
                    )
                  ),
                ),
                Text(
                  "Email: $_email",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontStyle: FontStyle.normal
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}