import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  ItemDetail({Key? key, required this.item}) : super(key: key);

// state: item
  final String? item;

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail of : $item'),
        ),
        body: Container(
          child: Column(
            children: [
              //  # CARD 1
              Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Card title: $item'),
                        subtitle: Text(
                          '$item ... Secondary Text',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              debugPrint('Cancelled!');
                            },
                            child: const Text('Cancel'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              debugPrint('Submitted!');
                            },
                            child: const Text('Submit'),
                          )
                        ],
                      ),
                      // Image.asset('icon/palm.png'),
                    ],
                  ),
                ),
              ),

              //  # CARD 2
              Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Card title: $item'),
                        subtitle: Text(
                          '$item ... Secondary Text',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              debugPrint('Cancelled!');
                            },
                            child: const Text('Cancel'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              debugPrint('Submitted!');
                            },
                            child: const Text('Submit'),
                          )
                        ],
                      ),
                      // Image.asset('icon/palm.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
