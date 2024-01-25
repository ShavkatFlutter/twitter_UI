import 'package:bottomnavigation/pages/about.dart';
import 'package:bottomnavigation/pages/language.dart';
import 'package:bottomnavigation/saved.dart';
import 'package:bottomnavigation/pages/security.dart';
import 'package:bottomnavigation/pages/settings.dart';
import 'package:bottomnavigation/pages/support.dart';
import 'package:bottomnavigation/pages/userpage.dart';
import 'package:bottomnavigation/pages/profile.dart';
import 'package:bottomnavigation/pages/contacts.dart';
// import 'profile.dart';
import 'package:flutter/material.dart';
// import 'contacts.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
    Widget buildHeader(BuildContext context) => Material(
      color: Colors.blue.shade700,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UserPage(),));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 10 + MediaQuery.of(context).padding.top,
                bottom: 20,
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.cyanAccent,
                backgroundImage: AssetImage("images/lazy.jpg"),
              ),
              SizedBox(height: 10),
              Text("Lazy", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white), ),
              Text("@LazyLearnerSh", style: TextStyle(fontSize: 15, color: Colors.white),),
            ],
          ),
        ),
      ),
    );
    Widget buildMenuItems(BuildContext context) => Container(
      padding: EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue,),
            title: const Text("Profile"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainPage(),
              ));
            }

          ),
          ListTile(
            leading: Icon(Icons.people_alt, color: Colors.blue,),
            title: const Text("Follower and Following"),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> ContactsPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.blue,),
            title: const Text("Saved messages"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>const DicePage(),
              ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>SettingsPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blue,),
            title: const Text("Privacy and Security"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>const SecurityPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.language, color: Colors.blue,),
            title: const Text("Lanuage"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>LanguagePage(),
              ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info, color: Colors.blue,),
            title: const Text("About"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>const AboutPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support, color: Colors.blue,),
            title: const Text("Support"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>const SupportPage(),
              ));
            },
          ),
        ],
      ),
    );
  }

