import 'package:flutter/cupertino.dart';
import 'package:localizationapp/data/dummy_data.dart';
import 'package:localizationapp/ui/widgets/task_widget.dart';

class allTaskScreen extends StatelessWidget {
  Function function;
  Function deleteFunction;
  allTaskScreen(this.function, this.deleteFunction);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allTasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(allTasks[index],function,deleteFunction);
        });
  }
}
