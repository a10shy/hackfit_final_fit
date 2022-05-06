part of 'connect_with_new_bloc.dart';

class ConnectWithNewState {
  final List<User> users;

  ConnectWithNewState(this.users);
}

class ConnectWithNewInitial extends ConnectWithNewState {
  ConnectWithNewInitial() : super([]);
}

class ConnectWithNewLoaded extends ConnectWithNewState {
  ConnectWithNewLoaded(List<User> users) : super(users);
}
