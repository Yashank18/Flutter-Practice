// import plugins
import 'dart:async';
import 'Employee.dart';

class EmployeeBloc{
  // make a list for data
  List<Employee> _employeeList = [
    Employee(1, "Yashank", 50000.0),
    Employee(2, "Yashank 1 ", 20000.0),
    Employee(3, "Yashank 2 ", 30000.0),
    Employee(4, "Yashank 3", 40000.0),
    Employee(5, "Yashank 4", 50000.0),
    Employee(6, "Yashank 5", 60000.0),
  ];



  // StreamControllers
  // Very Important
  final _ListStreamController = StreamController<List<Employee>>();

  // For Changes
  final _ListIncreaseStreamController = StreamController<Employee>();
  final _ListDecreaseStreamController = StreamController<Employee>();

  //getters
  Stream<List<Employee>> get employeelistStream=>_ListStreamController.stream;
  StreamSink<List<Employee>> get employeelistSink=>_ListStreamController.sink;
  StreamSink<Employee> get employeeSalaryInc=>_ListIncreaseStreamController.sink;
  StreamSink<Employee> get employeeSalaryDec=>_ListDecreaseStreamController.sink;
}