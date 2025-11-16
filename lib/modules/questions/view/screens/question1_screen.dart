import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp/modules/questions/view_model/quiz_cubit.dart';
import 'package:quizapp/modules/questions/view_model/quiz_states.dart';
import '../widgets/answers_widget.dart';
import '../widgets/question_head_widget.dart';

class Question1Screen extends StatefulWidget {
  const Question1Screen({super.key});

  @override
  State<Question1Screen> createState() => _Question1ScreenState();
}

class _Question1ScreenState extends State<Question1Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('im in the app (initState)');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('im in the app (didChangeDependencies)');
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    controller.text = '+20 xxx xxx xxxx';
    print(controller.text);

    return Scaffold(
      body: BlocConsumer<QuizCubit, QuizStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = QuizCubit.get(context);
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  QuestionHeadWidget(
                    number: 1,
                    label: 'what is the meaning of perfecto',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        label: Text('phone'),
                        hint: Text('please enter your phone'),
                      ),
                    ),
                  ),
                  // AnswersWidget(
                  //   answersCount: 3,
                  //   answers: ['red', 'green', 'blue'],
                  //   correctIndex: 2,
                  // ),
                  GestureDetector(
                    onTap: () {
                      if (controller.text.contains('+20')) {
                        if (controller.text.length == 11) {
                          showDialog(
                            context: context,
                            builder: (context) => Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 300.0,
                                horizontal: 20,
                              ),
                              child: Container(
                                color: Colors.red,
                                child: Center(
                                  child: Text(
                                    'gammed',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(
                                seconds: 4,
                                // seconds: controller.text.length <= 30 ? 1 : 3,
                              ),
                              // this is how u can get the length of the user input
                              content: Text(
                                'Your input length is: ${controller.text.toString().length}, but the correct length must be 11',
                              ),
                            ),
                          );
                        }
                      } else {
                        print('ya sa7by matsh8l4 dma8k');
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// MVVM => model - view - view_model
