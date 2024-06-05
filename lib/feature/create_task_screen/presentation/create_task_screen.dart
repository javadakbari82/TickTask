import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:ticktask/feature/create_task_screen/presentation/create_task_controller.dart';

import '../../../colors.dart';

class CreateTaskScreen extends GetView<CreateTaskController> {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double marginPage = size.width / 20;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create task",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(marginPage, 2, marginPage, 8),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Task title!';
                        }
                        return null;
                      },
                      cursorColor: Colors.white,
                      controller: controller.editingTaskNameController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Task title',
                          labelStyle: const TextStyle(
                              color: SolidColors.actionsAppBarrColor,
                              fontSize: 18)),
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(marginPage, 10, marginPage, 8),
                    child: TextFormField(
                      maxLength: 32,
                      cursorColor: Colors.white,
                      controller: controller.editingTaskDescriptionController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Task description',
                          labelStyle: const TextStyle(
                              color: SolidColors.actionsAppBarrColor,
                              fontSize: 18)),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(marginPage, 2, marginPage, 2),
                  child: SizedBox(
                    height: size.height / 15,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor:
                              SolidColors.bgBottomNavigationBarColor,
                          disabledForegroundColor: SolidColors.mainBodyColor,
                          minimumSize: const Size(double.infinity, 40)),
                      child: const Row(
                        children: [
                          Icon(Icons.add),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "Select project",
                              style: TextStyle(
                                  color: SolidColors.actionsAppBarrColor,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: size.height / 2,
                              color: SolidColors.bgBottomNavigationBarColor,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    marginPage, 20, marginPage, 12),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Select Project',
                                              style: TextStyle(
                                                  color: SolidColors
                                                      .actionsAppBarrColor,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            backgroundColor:
                                                SolidColors.mainBodyColor,
                                            disabledForegroundColor:
                                                SolidColors.mainBodyColor,
                                            minimumSize: const Size(
                                                double.infinity, 40)),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.add),
                                            Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "create project",
                                                style: TextStyle(
                                                    color: SolidColors
                                                        .actionsAppBarrColor,
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showModalBottomSheet<void>(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                color: SolidColors
                                                    .bgBottomNavigationBarColor,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: <Widget>[
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'Create Project',
                                                                style: TextStyle(
                                                                    color: SolidColors
                                                                        .actionsAppBarrColor,
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Flexible(
                                                              child:
                                                                  TextFormField(
                                                                cursorColor:
                                                                    Colors
                                                                        .white,
                                                                controller:
                                                                    controller
                                                                        .editingProjectNameController,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                                decoration: const InputDecoration(
                                                                    labelText:
                                                                        'Project name',
                                                                    labelStyle: TextStyle(
                                                                        color: SolidColors
                                                                            .actionsAppBarrColor,
                                                                        fontSize:
                                                                            18)),
                                                              ),
                                                            ),
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon:
                                                                    const Icon(
                                                                  Icons.add,
                                                                  color: SolidColors
                                                                      .contentDatePickerColor,
                                                                ))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
