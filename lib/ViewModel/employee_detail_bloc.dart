import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:projectunity/model/Employee/employee.dart';
import 'package:projectunity/rest/api_response.dart';
import 'package:projectunity/services/network_repository.dart';
import 'package:rxdart/rxdart.dart';

@Singleton()
class EmployeeDetailBloc {
  final NetworkRepository _networkRepository;

  EmployeeDetailBloc(this._networkRepository);

  final BehaviorSubject<ApiResponse<Employee>> _employee =
      BehaviorSubject<ApiResponse<Employee>>();

  BehaviorSubject<ApiResponse<Employee>> get employeeDetail => _employee;

  Future getEmployeeDetailByID(int id) async {
    _employee.sink.add(const ApiResponse.loading());
    try {
      Employee employee =
          await _networkRepository.getEmployeeDetailFromRepo(id);
      _employee.sink.add(ApiResponse.completed(data: employee));
    } on Exception catch (error) {
      _employee.sink.add(ApiResponse.error(message: error.toString()));
    }
  }

  void dispose() {
    _employee.close();
  }
}
