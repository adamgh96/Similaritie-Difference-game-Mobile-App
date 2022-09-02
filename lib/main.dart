import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Game'),
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => ImagePageState();
}

class ImagePageState extends State<ImagePage> {
  int LeftImageNum = 9;
  int RigthImageNum = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LeftImageNum == RigthImageNum ? 'Very Good' : 'Try again',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      LeftImageNum = Random().nextInt(9);
                      LeftImageNum = LeftImageNum + 1;
                      RigthImageNum = Random().nextInt(9);
                      RigthImageNum = RigthImageNum + 1;
                    });
                  },
                  child: Image.asset('images/image-$LeftImageNum.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      RigthImageNum = Random().nextInt(9);
                      RigthImageNum = RigthImageNum + 1;
                      LeftImageNum = Random().nextInt(9);
                      LeftImageNum = LeftImageNum + 1;
                    });
                  },
                  child: Image.asset('images/image-$RigthImageNum.png'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
