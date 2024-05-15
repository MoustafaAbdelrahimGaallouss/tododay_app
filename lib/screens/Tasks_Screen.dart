
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tododay_app/Widgets/Tasks_List.dart';
import 'package:tododay_app/screens/add_Task_screen.dart';
import 'package:provider/provider.dart';
import 'package:tododay_app/models/task_data.dart';
class Tasks_Screen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: addTaskScreen(
                      (newTaskTitle){
                        // setState(() {
                        //   Tasks.add(Task(name:newTaskTitle));
                        //   Navigator.pop(context);
                        // });
                       
                      }
                    ))),
          );
        },
        backgroundColor: Color.fromARGB(255, 8, 25, 39),
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blue[800],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  "ToDo Today",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
             Text(
              "${Provider.of<TaskData>(context).tasks.length} Tasks",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
