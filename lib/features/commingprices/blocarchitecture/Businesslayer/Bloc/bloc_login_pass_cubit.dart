import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_login_pass_state.dart';

class BlocLoginPassCubit extends Cubit<BlocLoginPassState> {
  BlocLoginPassCubit() : super(BlocLoginPassInitial());
}
