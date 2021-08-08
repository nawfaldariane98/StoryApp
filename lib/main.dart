import 'package:flutter/material.dart';
import 'package:story_app/components/storybtn.dart';
import 'package:story_app/data/storydata.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoryApp(),
    );
  }
}
class  StoryApp extends StatefulWidget {
  @override
  _StoryAppState createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  List<StoryData> stories=[
    new StoryData("jack brown", "https://randomuser.me/api/portraits/men/91.jpg", "https://images.unsplash.com/photo-1628088272412-c8e94a89c64f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
    new StoryData("dandinardo", "https://randomuser.me/api/portraits/men/51.jpg", "https://images.unsplash.com/photo-1605373992585-9855ae23cd1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80"),
    new StoryData("el kapote", "https://randomuser.me/api/portraits/men/61.jpg", "https://images.unsplash.com/photo-1621090162511-006cd5d9d6b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=401&q=80"),
    new StoryData("montorino", "https://randomuser.me/api/portraits/men/7.jpg", "https://images.unsplash.com/photo-1628088272412-c8e94a89c64f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
    new StoryData("totoriina", "https://randomuser.me/api/portraits/men/19.jpg", "https://images.unsplash.com/photo-1628088272412-c8e94a89c64f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
    new StoryData("aymane", "https://randomuser.me/api/portraits/men/16.jpg", "https://images.unsplash.com/photo-1605373992585-9855ae23cd1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80"),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "stories",
          style: TextStyle(
              color: Colors.blue,
          ),
        ),
      ),

      //body of the app
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),
                storyButton(stories[5], context)
              ],
            ),
          )
        ],
           ),
    );
  }
}

