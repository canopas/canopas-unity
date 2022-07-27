import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectunity/configs/font_size.dart';
import 'package:projectunity/navigation/navigation_stack_manager.dart';
import 'package:projectunity/widget/circular_progress_indicator.dart';
import 'package:projectunity/widget/error_snackbar.dart';

import '../../../../../bloc/admin/employee/employee_detail_bloc.dart';
import '../../../../../configs/colors.dart';
import '../../../../../di/service_locator.dart';
import '../../../../../model/employee/employee.dart';
import '../../../../../rest/api_response.dart';
import 'widget/profile_card.dart';
import 'widget/profile_detail.dart';

class EmployeeDetailScreen extends StatefulWidget {
  final String id;

  const EmployeeDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<EmployeeDetailScreen> createState() => _EmployeeDetailScreenState();
}

class _EmployeeDetailScreenState extends State<EmployeeDetailScreen> {
  final _bloc = getIt<EmployeeDetailBloc>();
  final _navigationStackManager = getIt<NavigationStackManager>();

  @override
  void initState() {
    _bloc.getEmployeeDetailByID(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _navigationStackManager.pop(),
          icon: const Icon(FontAwesomeIcons.angleLeft, color: Colors.black),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.black,
              fontSize: titleTextSize,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: StreamBuilder<ApiResponse<Employee>>(
        stream: _bloc.employeeDetail,
        initialData: const ApiResponse.idle(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return snapshot.data!.when(
              idle: () {
                return Container();
              },
              loading: () => const kCircularProgressIndicator(),
              completed: (Employee employee) {
                return SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                        height: 400,
                        child: ProfileCard(
                          employee: employee,
                        )),
                    ProfileDetail(employee: employee),
                  ]),
                );
              },
              error: (String error) {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  showSnackBar(context, error);
                });
                return Container();
              });
        },
      ),
    );
  }
}