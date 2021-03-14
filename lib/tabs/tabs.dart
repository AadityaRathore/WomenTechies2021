import 'package:flutter/material.dart';
import 'package:fitness_flutter/tabs/Diet.dart';
import 'package:fitness_flutter/tabs/Programs.dart';
import 'package:fitness_flutter/tabs/Results.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Programs(),
            Diet(),
            Results(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.explicit, size: 24.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 24.0),
            ),
            Tab(
              icon: Icon(Icons.insert_chart, size: 24.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black12,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}
