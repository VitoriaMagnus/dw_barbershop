import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:dw_barbershop/src/features/auth/login/login_state.dart';

part 'login_vm.g.dart';

@riverpod
class LoginVm extends _$LoginVm {
  @override
  LoginState build() => LoginState.initial();
}
