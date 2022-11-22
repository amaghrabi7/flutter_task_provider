import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (Text('List')), actions: [
        IconButton(
            onPressed: () {
              context.push('/add');
            },
            icon: Icon(Icons.add_box_outlined))
      ]),
      body: ListView.builder(
        itemCount: context.watch<TaskProvider>().tasks.length,
        itemBuilder: (context, index) =>
            Text(context.watch<TaskProvider>().tasks[index]),
      ),
    );
  }
}
