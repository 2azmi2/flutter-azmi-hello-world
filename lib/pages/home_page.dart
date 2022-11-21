import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, merk: 'RoseBrand'),
    Item(name: 'Salt', price: 2000, merk: 'Cap Kapal'),
    Item(name: 'Noodle', price: 3000, merk: 'Indomie')
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigasi Rute',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Navigasi Rute"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                              child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor:
                                      Color.fromARGB(255, 220, 244, 245),
                                  child: Icon(Icons.dining, size: 35.0))),
                          Expanded(child: Text(item.name)),
                          Expanded(child: Text(item.merk)),
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
