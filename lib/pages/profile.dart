import 'package:bottomnavigation/pages/homepage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 280;
  final double heightpic = 90;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            buildTop(),
            buildContent(),
            // matButton(text: "Edit"),
            // RowTex(),
          ],
        ),
    );
  }
  
  
  Widget buildTop() {

    final top = coverHeight - heightpic/2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 1),
        ),
        buildCoverImage(),
        Positioned(
            top: top -190,
            left: 15,
            child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() =>
      Container(
            color: Colors.grey,
            child: Image.asset("images/men.webp",
              width: double.infinity,
              height: coverHeight,
              fit: BoxFit.cover,
            ),
          );

  Widget buildProfileImage() =>
      Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: BackButton(
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(height: 140,),
          CircleAvatar(
            foregroundImage: AssetImage("images/lazy.jpg"),
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage("images/tired.webp"),
            radius: heightpic / 2,
          ),
        ],
      );

  // Widget matButton({
  //   required String text,
  // }) => Column(
  //   mainAxisAlignment: MainAxisAlignment.start,
  //   children: [
  //     MaterialButton(
  //       disabledColor: Colors.green,
  //         highlightColor: Colors.blue,
  //         color: Colors.white60,
  //         disabledTextColor: Colors.black,
  //         child: const Text("Edit"),
  //         onPressed: () {}
  //         ),
  //   ],
  // );

  Widget buildContent() => Padding(
    padding: const EdgeInsets.fromLTRB(10, 49, 10, 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Lazy", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(width: 250,),
            Align(
              alignment: Alignment.topRight,
              child: MaterialButton(
                  onPressed: (){},
                child: Text("Edit"),
                color: Colors.white60,
                highlightColor: Colors.indigo[300],
              ),
            ),
          ],
        ),
         SizedBox(height: 18,),
        Text("@LazyLearnerSh", style: TextStyle(fontSize: 15, height: 0.5),),
        Row(
          children: [
            SizedBox(width: 20,),
            TextButton(
                onPressed: () {},
                child: Text("Tweets", style: TextStyle(fontSize: 17, color: Colors.black),),
            ),
            SizedBox(width: 25,),
            TextButton(
              onPressed: () {},
              child: Text("Replies", style: TextStyle(fontSize: 17, color: Colors.black),),
            ),
            SizedBox(width: 25,),
            TextButton(
              onPressed: () {},
              child: Text("Media", style: TextStyle(fontSize: 17, color: Colors.black),),
            ),
            SizedBox(width: 25,),
            TextButton(
              onPressed: () {},
              child: Text("Likes", style: TextStyle(fontSize: 17, color: Colors.black),),
            ),
          ],
        ),
        Divider(color: Colors.grey,),
      ],
    ),
  );

}
//
// Widget RowTex() => Scaffold(
//   body: Row(
//     children: [
//       TextButton(
//           onPressed: (){},
//           child: Text("Tweets"),
//       ),
//     ],
//   ),
// );
