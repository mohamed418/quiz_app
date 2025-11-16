import 'package:flutter_bloc/flutter_bloc.dart';
import 'quiz_states.dart';

class QuizCubit extends Cubit<QuizStates> {
  QuizCubit() : super(QuizInitialState());

  static QuizCubit get(context) => BlocProvider.of(context);

  @override
  Future<void> close() {
    print('closed');
    // TODO: implement close
    return super.close();
  }
}
