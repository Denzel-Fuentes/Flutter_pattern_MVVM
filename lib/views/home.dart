import 'package:flutter/material.dart';

import '../../view_models/item_viewmodel.dart'; // Actualización del path

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ItemViewModel viewModel = ItemViewModel();

  final TextEditingController _controller = TextEditingController();

  void _addItem() {
    if (_controller.text.isNotEmpty) {
      viewModel.addItem(_controller.text);
      _controller.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Example'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(viewModel.items[index].title),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter item title',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addItem,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}