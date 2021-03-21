import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  final List<Tab> tabs = <Tab>[
    Tab(text: 'Zeroth'),
    Tab(text: 'First'),
    Tab(text: 'Second'),
    Tab(text: 'Third'),
    Tab(text: 'Fourth'),
    Tab(text: 'Fifth'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Library'),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabs,
            isScrollable: true,
          )),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab) {
          return Center(
            child: Text("${tab.text} Tab"),
          );
        }).toList(),
      ),
    );
  }
}
