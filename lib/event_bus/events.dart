import 'package:event_bus/event_bus.dart';
import 'package:projectunity/model/leave_application.dart';

EventBus eventBus = EventBus();

class LeaveUpdateEventListener {
  LeaveApplication leaveApplication;
  LeaveUpdateEventListener(this.leaveApplication);
}

class AllLeaveUpdateEventListener{}