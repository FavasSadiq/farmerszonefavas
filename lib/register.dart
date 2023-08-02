import 'package:farmerszone/loging.dart';
import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the login page file if it exists
void main() {
  runApp(MaterialApp(
    home: RegistrationPage(),
    debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
  ));
}
class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _createAccount() {
    // Implement your account creation logic here.
    // For simplicity, let's just print the entered data.
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    print("Name: $name, Email: $email, Password: $password");
  }

  void _navigateToLoginPage() {
    // Implement navigation to the login page here.
    // We will use Navigator.push to navigate to the LoginPage.
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page',),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
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
              onPressed: _createAccount,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Create Account'),
            ),
            SizedBox(height: 12.0),
            TextButton(
              onPressed: _navigateToLoginPage,
              child: Text(
                'Already Have an Account? Login',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
