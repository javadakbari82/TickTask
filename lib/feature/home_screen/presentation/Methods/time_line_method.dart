import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:ticktask/feature/home_screen/presentation/home_controller.dart';
import 'package:timelines/timelines.dart';

FixedTimeline buildFixedTimeline(HomeController controller) {
  return FixedTimeline.tileBuilder(
    theme: TimelineThemeData(
        nodePosition: 0.05,
        connectorTheme: const ConnectorThemeData(space: 30)),
    builder: TimelineTileBuilder.connected(
      indicatorPositionBuilder: (context, index) {
        return 0.08;
      },

      itemCount: controller.tasks.length, // Assuming you have a list of tasks
      // connectionDirection: ConnectionDirection.before,
      contentsBuilder: (context, index) {
        var task = controller.tasks[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                task.name!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                task.describe!,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_outlined,
                    color: Colors.white,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${task.dateTime!.hour.toString()}:${task.dateTime!.minute.toString()}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (task.project.value != null) ...[
                    Text(
                      task.project.value!.name!,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                  const SizedBox(
                    width: 5,
                  ),
                  if (task.tags.isNotEmpty) ...[
                    Text(
                      task.tags.toList()[index].name.toString(),
                      style: const TextStyle(color: Colors.white),
                    )
                  ]
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FixedTimeline.tileBuilder(
                builder: TimelineTileBuilder(
                  itemCount: 2,
                  indicatorBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(onTap: () {
                          controller.toggleDone(index);
                          controller
                              .getTasks(controller.selectedTime)
                              .then((value) {
                            controller.tasks.value = value!;
                          });
                        }, onLongPress: () {
                          controller.toggleCancel(index);
                          controller
                              .getTasks(controller.selectedTime)
                              .then((value) {
                            controller.tasks.value = value!;
                          });
                        }, child: Obx(() {
                          var task = controller.tasks[index];
                          if (task.isCancel!) {
                            return const DotIndicator(
                              color: Colors.grey,
                              child: Icon(Icons.cancel_outlined),
                            );
                          } else if (task.isDone!) {
                            return const DotIndicator(
                              color: Colors.blue,
                              child: Icon(Icons.check, color: Colors.white),
                            );
                          } else {
                            return const OutlinedDotIndicator(
                              color: Colors.grey,
                              size: 18,
                            );
                          }
                        })),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  contentsBuilder: (context, index) {
                    var task1 = controller.tasks[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        task1.name!,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    );
                  },
                ),
              )
            ],
          ), // Display task name
        );
      },
      connectorBuilder: (context, index, type) {
        return const SolidLineConnector();
      },
      indicatorBuilder: (context, index) {
        return GestureDetector(onTap: () {
          controller.toggleDone(index);
          controller.getTasks(controller.selectedTime).then((value) {
            controller.tasks.value = value!;
          });
        }, onLongPress: () {
          controller.toggleCancel(index);
          controller.getTasks(controller.selectedTime).then((value) {
            controller.tasks.value = value!;
          });
        }, child: Obx(() {
          var task = controller.tasks[index];
          if (task.isCancel!) {
            return const DotIndicator(
              color: Colors.grey,
              child: Icon(Icons.cancel_outlined),
            );
          } else if (task.isDone!) {
            return const DotIndicator(
              color: Colors.blue,
              child: Icon(Icons.check, color: Colors.white),
            );
          } else {
            return const OutlinedDotIndicator(
              color: Colors.grey,
              size: 18,
            );
          }
        }));
      },
    ),
  );
}
