import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children:[
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
                Expanded(child: Center(child: Text("Expanded",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))),
                IconButton(onPressed: (){}, icon: Icon(Icons.person),),
              ],
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Expanded(
              // flex takes the ratio of the screen. assigning 2 means it takes 2 of 1/3 
              flex: 2,
              // ListView builder takes the context and index property 
              child: ListView.builder(itemBuilder: (context, index) {
                
                return ListTile(
                  title: Text("List Tile $index"),
                );
                
              }),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.grey.withOpacity(0.5),
                  title: Text("List Tile $index"),
                );
                
              }),
            ),
          ],
        ),
      ),
    );
  }
}