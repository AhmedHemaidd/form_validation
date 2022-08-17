import 'package:localizationapp/ui/widgets/task_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:localizationapp/data/dummy_data.dart';

class CompleteTaskScreen extends StatelessWidget {
  Function function;
  Function deleteFunction;
  CompleteTaskScreen(this.function, this.deleteFunction);
  @override
  Widget build(BuildContext context) {
    return allTasks.where((element) => element.isComplete).length == 0
        ? Center(
            child: Lottie.asset('assets/animations/empty.json'),
          )
        : ListView.builder(
            itemCount: allTasks.where((element) => element.isComplete).length,
            itemBuilder: (context, index) {
              return TaskWidget(
                  allTasks
                      .where((element) => element.isComplete)
                      .toList()[index],
                  function,
                  deleteFunction);
            });
  }
}
