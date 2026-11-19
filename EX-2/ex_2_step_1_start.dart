import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            FavoriteCart(title: 'Dart', Description: 'the best object languages', ),
            FavoriteCart(title: 'Flutter', Description: 'the best object languages',),
            FavoriteCart(title: 'OOP', Description: 'the best object languages',),

          ],
        )
      ),
    ));

class FavoriteCart extends StatefulWidget {
  
  final String title;
  final String Description;
  const FavoriteCart({
    super.key, required this.title, required this.Description,
  });

  @override
  State<FavoriteCart> createState() => _FavoriteCartState();
}

class _FavoriteCartState extends State<FavoriteCart> {
  bool _isFavorite = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: 
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: TextStyle(color: Colors.blue, fontSize: 24), ),
                          Text(widget.Description),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          _isFavorite =! _isFavorite;
                        });
                      },
                     icon: Icon(
                      _isFavorite ? Icons.favorite: Icons.favorite_border,
                      color: _isFavorite ? Colors.red : Colors.grey,
                     ),
                     ),
                    
    
                  ],
                ),
                
              ),
            // YOUR CODE
            ),
            Divider(
              color: const Color.fromARGB(255, 198, 193, 193),
              thickness: 1,
              ),
      ],
      
    );
  }
}
