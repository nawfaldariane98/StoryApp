import 'package:flutter/material.dart';
import 'package:story_app/data/storydata.dart';
class StoryView extends StatefulWidget {
final StoryData story;
StoryView({Key? key , required this.story}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.story.storyUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: percent,
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.story.avatarUrl),
                      radius: 30.0,
                    ),
                    SizedBox(width: 8.0,
                    ),
                    Text(widget.story.userName, style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
