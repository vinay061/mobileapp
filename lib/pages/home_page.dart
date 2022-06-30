import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/task.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight;
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Center(child: Text("TASKLY")),
      ),
      body: _taskList(),
    );
  }

  Widget _taskList() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskOne:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle_outline_rounded),
        ),
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskTwo:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle_outline_rounded),
        ),
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskThree:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle_outline_rounded),
        )
      ],
    );
  }
}
