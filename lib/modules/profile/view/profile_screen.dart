import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/modules/profile/view_model/profile_cubit.dart';
import 'package:quizapp/modules/profile/view_model/profile_states.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProfileCubit(),

      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {
          if (state is ProfileUpdateLoadingState) {
            print('The state now is "Loading"');
          } else if (state is ProfileUpdateSuccessState) {
            print('The state now is "Success"');
            ProfileCubit.get(context).updateProfile(value: 'value');
          } else if (state is ProfileUpdateNameState) {
            print('Name is changes"');
          }
        },
        builder: (context, state) {
          var cubit = ProfileCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cubit.name.toString(),
                      style: GoogleFonts.afacad(fontSize: 30),
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.updateProfile(value: 'mohamed');
                      },
                      child: Text(
                        'try change the state',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Chokokutai-Regular',
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    BuildCondition(
                      condition: state is ProfileUpdateNameState,
                      builder: (context) => GestureDetector(
                        onTap: () {
                          cubit.changeState();
                        },
                        child: CircleAvatar(backgroundColor: Colors.blue),
                      ),
                      fallback: (context) =>
                          CircularProgressIndicator(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
