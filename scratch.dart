import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3();
  print(result);
}

void task1() {
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result = "";
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 completed');
  });
  return result;
}

void task3() {
  print('Task 3 complete');
}



















// import 'dart:io';

// void main() {
//   performTasks();
// }

// void performTasks() async {
//   task1();
//   String result = 'task 1 data';
//   print('Task 1 complete');
// }

// void task1() {
//   String result = 'task 1 data';
//   print('Task 1 complete');
// }

// String task2() {
//   Duration threeSeconds = Duration(seconds: 3);
//   String result;

//   awaite.Future.delayed(threeSeconds, () {
//     result = 'task 2 data';
//     print('Task 2 completed');
//   });
//   return result;
// }

// void task3() {
//   String result = 'task 3 data';
//   print('Task 3 complete');
// }
