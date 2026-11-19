import 'package:flutter/material.dart';

List<String> images = [
  "EX-3/assets/w4-s2/bird.jpg",
  "EX-3/assets/w4-s2/bird2.jpg",
  "EX-3/assets/w4-s2/insect.jpg",
  "EX-3/assets/w4-s2/girl.jpg",
  "EX-3/assets/w4-s2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: HandleClick(),
    ));

class HandleClick extends StatefulWidget {
  const HandleClick({
    super.key,
  });

  @override
  State<HandleClick> createState() => _HandleClickState();
}

class _HandleClickState extends State<HandleClick> {

  int _currentIndex = 0;

  void _previousImage(){
    setState(() {
      _currentIndex--;
      if(_currentIndex<0){
        _currentIndex = images.length -1;
      }
    });
  }

  void _nextImage(){
    setState(() {
      _currentIndex++;
      if(_currentIndex>= images.length){
        _currentIndex = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: _previousImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: _nextImage,
            ),
          ),
        ],
      ),
      body: Image.asset(images[_currentIndex], width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
    );
  }
}
