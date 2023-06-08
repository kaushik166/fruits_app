import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String date = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                  // barrierColor: Colors.greenAccent.withOpacity(0.4),
                  context: context,
                  builder: (context) {
                    return Center(
                      child: Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  decoration: TextDecoration.none,
                                  fontSize: 22),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "CANCEL",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        decoration: TextDecoration.none,
                                        fontSize: 18),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    "ACCEPT",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        decoration: TextDecoration.none,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text("show dialog box")),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    color: Colors.greenAccent,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text("close"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text("show bottom sheet"),
          ),
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1923),
                lastDate: DateTime.now(),
              ).then(
                (value) {
                  if (value != null) {
                    date = "${value.day}/${value.month}/${value.year}";
                    setState(() {});
                    // print("=====> ${value.day}/${value.month}/${value.year}");
                  }
                },
              );
            },
            child: const Text("Date Picker"),
          ),
          ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then(
                  (value) {
                    if (value != null) {
                      // print("===>  ${value.hour}/${value.minute}");
                    }
                  },
                );
              },
              child: const Text("Watch Picker")),
          PopupMenuButton(
            onSelected: (o) {
              if (o == 0) {}
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  // value: 0,
                  child: Text("Profile"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Setting"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Notification"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Other"),
                ),
              ];
            },
          ),
          PopupMenuButton(
            onSelected: (i) {
              if (i == 0) {
                print("====> hello");
              } else if (i == 1) {
                print("====> world");
              }
              if (kDebugMode) {
                print("======> $i");
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text("Menu"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Account"),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
