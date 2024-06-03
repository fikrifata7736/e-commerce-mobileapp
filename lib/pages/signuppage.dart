import 'package:e_commerce_sellify_app/pages/signinpage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFFD2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFC4100),
                ),
              ),
              Text(
                'Your Favorite Brands, Just a Click Away',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                icon: Icon(Icons.g_translate, color: Colors.black),
                label: Text('Google', style: TextStyle(color: Colors.black)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  elevation: 0,
                ),
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Color(0xFFFC4100),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      color: Color(0xFFFC4100),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFFFC4100),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      color: Color(0xFFFC4100),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFFFC4100),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.0),
                    borderSide: BorderSide(
                      color: Color(0xFFFC4100),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                    activeColor: Colors.orange,
                  ),
                  Expanded(
                    child: Text(
                      "I agree to The Terms of Service and Privacy Policy",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFC4100),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Do you have account?",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign In',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()),
                            );
                          },
                      ),
                    ],
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
