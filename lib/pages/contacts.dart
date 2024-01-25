import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            child: Row(
              children: [
                SizedBox(width: 30),
                TextButton(
                    onPressed: (){},
                    child: Text("Followers", style: TextStyle(fontSize: 20, color: Colors.black),)
                ),
                SizedBox(width: 90,),
                TextButton(
                    onPressed: (){},
                    child: Text("Following", style: TextStyle(fontSize: 20, color: Colors.black),))
              ],
            ),
          ),
          Divider(height: 10, color: Colors.grey,),
          Center(
            heightFactor: 40,
            child: Text("Siz kuzatadigan va sizni kuzatadiganlar topilmadi"),
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Follower and Following"),
      ),
    );
  }
}
