import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class Model {
  final String nama;

  Model(this.nama);

  @override
  String toString() => nama;
}

class TypeAhead extends StatefulWidget {
  const TypeAhead({Key? key}) : super(key: key);

  @override
  _TypeAheadState createState() => _TypeAheadState();
}

class _TypeAheadState extends State<TypeAhead> {
  List<Model> model = [];

  @override
  void initState() {
    model.add(Model("value"));
    super.initState();
  }

  Future<List<Model>> getModel() async {
    return await model;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
          autofocus: true,
          style: DefaultTextStyle.of(context)
              .style
              .copyWith(fontStyle: FontStyle.italic),
          decoration: InputDecoration(border: OutlineInputBorder())),
      suggestionsCallback: (pattern) async {
        print("clbk");
        return await getModel();
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text(suggestion!.toString()),
        );
      },
      onSuggestionSelected: (suggestion) {
        print("suggest = $suggestion");
      },
    )));
  }
}
