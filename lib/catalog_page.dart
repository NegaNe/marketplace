// import 'dart:html';

import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> store = <String>[
      'Sony',
      'Apple',
      'Cherry MX',
      'Smasnug'
    ];
    final List<String> product = <String>[
      'Sony PlayStation 4',
      'MacBook Air M2',
      'Cherry ',
      'Smasnug A54 8/256GB'
    ];
    final List<String> price = <String>[
      '8.999.999',
      '4.999.999',
      '1.999.999',
      '4.999.999'
    ];
    final List<String> imageList = <String>[''];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: store.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.cyan,
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                      width: 25,
                      height: 25,
                    ),
                    Text(store[index])
                  ],
                ),
                Container(
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                        height: 50,
                        width: 59,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [Text(product[index])],
                          ),
                          Row(
                            children: [Text('Rp. ${price[index]}')],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
