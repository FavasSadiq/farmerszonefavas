import 'package:farmerszone/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Implement your login logic here.
    // For simplicity, let's just print the entered email and password.
    String email = _emailController.text;
    String password = _passwordController.text;
    print("Email: $email, Password: $password");
  }
  void _navigateToLoginPage() {
    // Implement navigation to the login page here.
    // We will use Navigator.push to navigate to the LoginPage.
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>RegistrationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _login,
             // color: Colors.blue,
             // textColor: Colors.white,
              child: Text('Login'),
            ),
        SizedBox(height: 12.0),
        TextButton(
          onPressed: _navigateToLoginPage,
          child: Text(
            'Create Accout?Signup',
            style: TextStyle(fontSize: 15),
          ),
        ),



          ],
        ),
      ),
    );
  }
}
