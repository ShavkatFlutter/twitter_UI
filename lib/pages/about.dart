import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        width: 130,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              spreadRadius: 2,
              offset: Offset(0.0, 5.0),
              blurRadius: 20,
              color: Colors.black,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30.0,
              width: 90.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: const Center(child: Text("Tahrir", style: TextStyle(fontSize: 20),)),
            ),
            const Icon(Icons.edit),
          ],
        ),
      ),
    );
  }
}
