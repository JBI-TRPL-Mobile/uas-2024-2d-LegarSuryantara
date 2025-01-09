import 'package:flutter/material.dart';
import 'signupScreen.dart';
import 'signinScreen.dart';

class RegistrasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImagePlaceholder(),
                  SizedBox(height: 20),
                  Title(), 
                  SizedBox(height: 10), 
                  Deskripsi(),
                  SizedBox(height: 40),
                  Deskripsi(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Aplikasi Kasir Pintar",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 46, 0, 0),
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset( 'assets/OIP.jpg',
        ),
      ),
    );
  }
}

class Deskripsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Selamat Datang",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SigninScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.blue,
            shadowColor: Colors.blueAccent,
            elevation: 5,
          ),
          child: Row(
            children: [
              Icon(Icons.login),
              SizedBox(width: 5),
              Text("Sign In"),
            ],
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.green,
            shadowColor: Colors.greenAccent,
            elevation: 5,
          ),
          child: Row(
            children: [
              Icon(Icons.app_registration),
              SizedBox(width: 5),
              Text("Sign Up"),
            ],
          ),
        ),
      ],
    );
  }
}
