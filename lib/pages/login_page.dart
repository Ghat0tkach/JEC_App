import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _studentIDController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 25.0),
                    Text(
                      'JEC Jabalpur',
                      style: TextStyle(
                          fontSize: 32.0,
                          color: Color.fromARGB(255, 129, 127, 53),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 26.0), // Add some space between the texts
                    Text(
                      "Welcome Back,",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(height: 26.0),
                TextField(
                  style: const TextStyle(fontWeight: FontWeight.normal),
                  controller: _studentIDController,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                    hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                    hintText: 'Enter your student ID here',
                    labelText: "Student Id",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey[400]!)
                        // Set a lighter color
                        ),
                  ),
                ),
                const SizedBox(height: 28.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                    hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                    hintText: "Enter Your Password here",
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey[400]!)
                        // Set a lighter color
                        ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: _obscureText ? Colors.grey : Colors.black,
                      ),
                    ),
                  ),
                  obscureText: _obscureText,
                ),
                const SizedBox(height: 26.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pushNamed('/home'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurpleAccent, // Text color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20), // Button size
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text('Login'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 27, 192, 159)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
