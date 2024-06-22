import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:get/get.dart';
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
                  padding: EdgeInsets.fromLTRB(marginPage, 2, marginPage, 8),
                  child: SizedBox(
                    height: size.height / 14,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor:
                              SolidColors.bgBottomNavigationBarColor,
                          disabledForegroundColor: SolidColors.mainBodyColor,
                          minimumSize: const Size(double.infinity, 40)),
                      child: Obx(() {
                        return Row(
                          children: [
                            if (controller.selectedProject.value.name ==
                                null) ...[
                              const Icon(Icons.add),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Select project",
                                  style: TextStyle(
                                      color: SolidColors.actionsAppBarrColor,
                                      fontSize: 16),
                                ),
                              ),
                            ] else ...[
                              Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Project: ${controller.selectedProject.value.name}",
                                    style: const TextStyle(
                                        color: SolidColors.actionsAppBarrColor,
                                        fontSize: 16),
                                  ))
                            ]
                          ],
                        );
                      }),
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
                                      Expanded(
                                        child: ListView.builder(
                                            padding: const EdgeInsets.all(8),
                                            itemCount:
                                                controller.projects.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: InkWell(
                                                    onTap: () {
                                                      controller.selectedProject
                                                              .value =
                                                          controller
                                                              .projects[index];
                                                      Navigator.pop(context);
                                                      print(controller
                                                          .selectedProject
                                                          .value
                                                          .id);
                                                    },
                                                    child: Container(
                                                      width: size.width / 4,
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          20)),
                                                          color: SolidColors
                                                              .mainBodyColor),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                16, 8, 8, 8),
                                                        child: Text(
                                                          '${controller.projects[index].name}',
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 15),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
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
                                                              child: Form(
                                                                key: controller
                                                                    .formKey,
                                                                child:
                                                                    TextFormField(
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                            null ||
                                                                        value
                                                                            .isEmpty) {
                                                                      return 'Enter Project Name';
                                                                    }
                                                                    return null;
                                                                  },
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
                                                            ),
                                                            IconButton(
                                                                onPressed: () {
                                                                  if (controller
                                                                      .formKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    controller
                                                                            .selectedProject
                                                                            .value =
                                                                        controller
                                                                            .createProject();

                                                                    Navigator.pop(
                                                                        context);
                                                                  }
                                                                },
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
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(marginPage, 8, marginPage, 2),
                  child: SizedBox(
                    height: size.height / 14,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor:
                                SolidColors.bgBottomNavigationBarColor,
                            disabledForegroundColor: SolidColors.mainBodyColor,
                            minimumSize: const Size(double.infinity, 40)),
                        child: Obx(() {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(Icons.date_range_sharp),
                              Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Date: ${controller.argumentDate.value.year} : ${controller.argumentDate.value.month} : ${controller.argumentDate.value.day}",
                                    style: const TextStyle(
                                        color: SolidColors.actionsAppBarrColor,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Time: ${controller.argumentDate.value.hour} : ${controller.argumentDate.value.minute}",
                                    style: const TextStyle(
                                        color: SolidColors.actionsAppBarrColor,
                                        fontSize: 16),
                                  )),
                            ],
                          );
                        }),
                        onPressed: () {
                          DatePicker.showDateTimePicker(context,
                              showTitleActions: true, onChanged: (date) {
                            print('change $date in time zone ' +
                                date.timeZoneOffset.inHours.toString());
                          }, onConfirm: (date) {
                            controller.argumentDate.value = date;
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
