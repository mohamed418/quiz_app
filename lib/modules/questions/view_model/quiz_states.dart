abstract class QuizStates {}

class QuizInitialState extends QuizStates{}

// states of NextButton
class CheckAnswerLoadingState extends QuizStates{}
class CheckAnswerSuccessState extends QuizStates{}
class CheckAnswerErrorState extends QuizStates{}
