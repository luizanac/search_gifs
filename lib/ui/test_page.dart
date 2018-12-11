import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  final Duration duration = Duration(milliseconds: 1000);


  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with SingleTickerProviderStateMixin {

  AnimationController _controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: widget.duration,
    );
  }
  
  @override
  void didUpdateWidget(TestPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = widget.duration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}
