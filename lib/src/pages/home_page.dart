import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componets'),
        ),
        body: _list(),
      );
  }

  Widget _list() {

    menuProvider.loadData();

    return ListView(
      children: _createList(),
    );
  }

  List<Widget> _createList() {
    return [
      ListTile(
        title: Text('asdf'),
        subtitle: Text('test'),
        leading: Icon(Icons.format_list_bulleted),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      ),
      Divider(),
      ListTile(
        title: Text('asdf'),
        subtitle: Text('test'),
        leading: Icon(Icons.format_list_bulleted),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      ),
      Divider(),
    ];
  }
}