import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/modules/profile/view_model/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  bool name = true;

  void updateProfile({required String value}) {
    name = !name;
    emit(ProfileUpdateNameState());
  }

  // Change the state
  void changeState() {
    emit(ProfileUpdateSuccessState());
  }
}
