import 'package:flutter/material.dart';
import 'auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Center(
            child: Image(
              image: AssetImage("assets/IDS_logo.png"),
              width: 300.0,
            ),
          ),
        ),
        SizedBox(
          height: 75.0,
        ),
        Container(
          decoration: new BoxDecoration(
            color: Colors.white.withAlpha(200),
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0),
            ),
          ),
          padding: EdgeInsets.all(16),
          width: 300,
          height: 200,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Material(
                    child: TextFormField(
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                  cursorColor: Color(0xffb55e28),
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                )),
                Material(
                    child: TextFormField(
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                  cursorColor: Color(0xffb55e28),
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                )),
                ButtonTheme(
                  minWidth: 300.0,
                  child: RaisedButton(
                    color: Color(0xff00539f),
                    child: Text(
                      'Register',
                      style: TextStyle(color: Color(0xffffd544), fontSize: 20),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        print(email);
                        print(password);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
