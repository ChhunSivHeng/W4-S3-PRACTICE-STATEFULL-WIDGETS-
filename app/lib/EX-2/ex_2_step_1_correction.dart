import 'package:flutter/material.dart';

void main() => runApp(Card());

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: const [
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _isFavorited = false;
  Color get _heartColor => _isFavorited ? Colors.red : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
          ),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'title',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('description'),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => setState(() => _isFavorited = !_isFavorited),
                icon: Icon(Icons.favorite, color: _heartColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
