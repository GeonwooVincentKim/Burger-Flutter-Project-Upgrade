import 'package:flutter/material.dart';

import 'test_sidemenu.dart';


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Widget _buildTestAppBar(){
    return AppBar(
      title: Text("TEST.."),
      centerTitle: true,
      actions: [

      ],
    );
  }

  Widget _buildTestAppBody(){
    return Container(
      child: Text("HI")
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildTestAppBar(),
      body: _buildTestAppBody(),
      drawer: TestSideMenu(),
    );
  }
}