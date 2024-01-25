import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 150),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: (){}, 
                  child: Text("AC"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("+/-"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("%"),
              ),
              MaterialButton(
                color: Colors.orange,
                onPressed: (){},
                child: Text("/"),
              )
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){},
                child: Text("7"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("8"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("9"),
              ),
              MaterialButton(
                color: Colors.orange,
                onPressed: (){},
                child: Text("x"),
              ),
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){},
                child: Text("4"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("5"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("6"),
              ),
              MaterialButton(
                color: Colors.orange,
                onPressed: (){},
                child: Text("-"),
              ),
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){},
                child: Text("1"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("2"),
              ),
              OutlinedButton(
                onPressed: (){},
                child: Text("3"),
              ),
              MaterialButton(
                color: Colors.orange,
                onPressed: (){},
                child: Text("+"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
