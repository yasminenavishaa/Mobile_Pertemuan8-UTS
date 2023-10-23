// ignore_for_file: dead_code

import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Mangga',
      price: 18000,
      image: 'assets/mangga.jpg',
    ),
    Item(
      name: 'Apel',
      price: 34000,
      image: 'assets/apel.jpg',
    ),
    Item(
      name: 'Melon',
      price: 35000,
      image: 'assets/melon.jpg',
    ),
    Item(
      name: 'Manggis',
      price: 15000,
      image: 'assets/manggis.jpg',
    ),
    Item(
      name: 'Semangka',
      price: 21000,
      image: 'assets/semangka.jpg',
    ),
  ];
  @override
  Widget build(BuildContext){
    return Scaffold(
      key: Key('home_page'),
      appBar: AppBar(
        title: Text('Shopping List'),
        actions: const <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Yasmine Navisha Andhani'),
              Text('2141720047'),
            ],
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ))
                    ],
                ),
              ),
              ),
            );
          }
        ),
      )
    );
  }
}

