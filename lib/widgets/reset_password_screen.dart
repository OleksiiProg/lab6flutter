import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home3(),
));

class Home3 extends StatelessWidget {
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

            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            ElevatedButton(
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
              child: const Text('Reset'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.pop(context)
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, //
                ),
                minimumSize: const Size(double.infinity, 50), //
              ),
              child: const Text('Back'),
            ),
            const SizedBox(height: 20),
          ],
        ),

      ),

    );
  }
}