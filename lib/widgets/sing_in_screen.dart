import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(

        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Image(
              width: 210,
              image: AssetImage('assets/Google-flutter-logo.svg.png'),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Login',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home2(),
                  ),
                )
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Sign up'),
            ),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home3(),
                          ),
                        )
                      },
                      style: ElevatedButton.styleFrom(

                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Reset password'),
                    ),
                  ),
                  ],
            ),
          ],
        ),

      ),

    );
  }
}