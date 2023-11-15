import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_megaloman/data/datasources/auth_remote_datasources.dart';
import 'package:flutter_megaloman/data/models/request/auth_request_model.dart';
import 'package:flutter_megaloman/data/models/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await AuthRemoteDataSource().login(event.requestModel);
      response.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
