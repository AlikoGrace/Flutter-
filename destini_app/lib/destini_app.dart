import 'package:flutter/material.dart';
import 'package:destini_app/story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class DestiniApp extends StatefulWidget {
  const DestiniApp({Key? key}) : super(key: key);

  @override
  State<DestiniApp> createState() => _DestiniAppState();
}

class _DestiniAppState extends State<DestiniApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            constraints: BoxConstraints.expand(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 12,
                    child: Center(
                      child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(1);
                        });
                      },
                      child: Container(
                        color: Colors.red,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            storyBrain.getChoice1(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    visible: storyBrain.getChoice2().isEmpty ? false : true,
                    child: Expanded(
                      flex: 2,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            storyBrain.nextStory(2);
                          });
                        },
                        child: Container(
                          color: Colors.blue,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              storyBrain.getChoice2(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    ]));
  }
}
