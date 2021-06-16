import 'package:flutter/material.dart';

class Locationstat extends StatefulWidget {
  @override
  _LocationstatState createState() => _LocationstatState();
}

class _LocationstatState extends State<Locationstat>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        automaticallyImplyLeading: false,
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                text: ('Pokhara Lekhnath'),
              ),
              Tab(
                text: ('Outside Pokhara-Lekhnath'),
              ),
            ]),
      ),
      body: TabBarView(
        children: <Widget>[
          NestedTabBar(),
          Icon(Icons.add),
        ],
        controller: _tabController,
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController? _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.9),
          toolbarHeight: 50,
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            tabs: [
              Tab(
                child: Text(
                  "Tab Bar 1 sdssdd sdsd",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Tab Bar 1 sdssdd sdsd",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Tab Bar 1 sdssdd sdsd",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.blueGrey[300],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.blueGrey[300],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.green[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
