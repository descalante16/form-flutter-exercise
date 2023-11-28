import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        title: Text(
          'Log in Form',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.code,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(padding: EdgeInsets.all(40), children: [
          Text(
            'Welcome Back!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email Address',
            ),
          ),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                minimumSize: Size(128, 40),
              ),
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
              },
              child: Text(
                'LOG IN',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              )),
        ]),
      ),
    );
  }
}
