import 'package:bloc/bloc.dart';
import 'package:fitify_flutter/services/web_services.dart';
import 'package:meta/meta.dart';

import '../../../models/user_model/user.dart';

part 'connect_with_new_event.dart';
part 'connect_with_new_state.dart';

class ConnectWithNewBloc
    extends Bloc<ConnectWithNewEvent, ConnectWithNewState> {
  ConnectWithNewBloc() : super(ConnectWithNewInitial()) {
    on<GetConnectionList>((event, emit) async {
      try {
        await WebService.getContactList().then((users) {
          return emit(ConnectWithNewLoaded(users!));
        });
      } catch (e) {
        print(e);
      }
    });
  }
}
