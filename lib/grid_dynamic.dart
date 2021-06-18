import 'package:charts/model/grid_model.dart';
import 'package:flutter/material.dart';

class GridDynamic extends StatefulWidget {
  const GridDynamic({Key? key}) : super(key: key);

  @override
  _GridDynamicState createState() => _GridDynamicState();
}

class _GridDynamicState extends State<GridDynamic> {
  List<GridModel> list = [];

  @override
  void initState() {
    list.add(GridModel("profile", Icon(Icons.people)));
    list.add(GridModel("profile", Icon(Icons.people)));
    list.add(GridModel("profile", Icon(Icons.people)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          shrinkWrap: true,
          children: List.generate(
              list.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text(list[index].name), list[index].icon],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
