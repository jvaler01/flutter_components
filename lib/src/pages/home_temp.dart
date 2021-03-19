import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componets Temp'),
        ),
        body: ListView(
          //children: _createList(),
          children: _createListShort(),
        )
      );
  }

  List<Widget> _createList() {

    List<Widget> list = new List<Widget>();

    for (var opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)
          ..add(Divider());
    }

    return list;
  }

  List<Widget> _createListShort() {
    return options.map((e){
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('test'),
            leading: Icon(Icons.format_list_bulleted),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }

}