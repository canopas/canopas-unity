import 'package:projectunity/data/model/space/space.dart';

class JoinSpaceEvents {}

class JoinSpaceInitialFetchEvent extends JoinSpaceEvents {}

class SelectSpaceEvent extends JoinSpaceEvents {
  final Space space;

  SelectSpaceEvent({required this.space});
}

class JoinRequestedSpaceEvent extends JoinSpaceEvents {
  final Space space;

  JoinRequestedSpaceEvent({required this.space});
}

class SignOutEvent extends JoinSpaceEvents {}
