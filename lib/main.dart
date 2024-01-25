import 'package:bottomnavigation/fabutton.dart';
import 'package:bottomnavigation/pages/homepage.dart';
import 'package:bottomnavigation/menu.dart';
import 'package:bottomnavigation/search.dart';
import 'package:bottomnavigation/pages/settings.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_speed_deal/flutter_speed_deal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectIndex=0;
  final tabs = [
    const Center(child: Text("Bosh sahifa")),
    // Center(child: Pages()),
    const Center(child: SearchPage()),
    const Center(child: Text("notification")),
    const Center(child: Text("Shaxsiy xabarlar")),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("UzXabar"),
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: tabs[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectIndex,
            onTap: (index) {
              setState(() {
                _selectIndex=index;
              });
              _selectIndex = index;
            },
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Direct messages"),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: FabMenuApp(),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String>? searchTerms = [
    'Apple',
    'Banana',
    'Orange',
    'Limon',
    'Penaple',
    'Cocount',
    'pear',
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms!) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms!) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }
}
