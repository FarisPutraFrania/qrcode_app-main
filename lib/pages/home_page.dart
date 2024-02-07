import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 250),
                child: Text(
                  'Welcome To QrApp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                )),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'You Can Scan Everything in Here!',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/generate");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, right: 45, left: 45),
                  child: Text('Generate Your Qr!'),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/scan");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, right: 45, left: 45),
                  child: Text('Scan Your Qr!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
