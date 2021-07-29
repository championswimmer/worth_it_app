import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_it_app/data/onboarding/onboarding_bloc.dart';
import 'package:worth_it_app/widgets/atomic/onboarding_greeting_card.dart';

import '../app-router.dart';

class OnboardingFormPage extends StatefulWidget {
  @override
  _OnboardingFormPageState createState() => _OnboardingFormPageState();
}

class _OnboardingFormPageState extends State<OnboardingFormPage> {
  int _formPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OnboardingGreetingCard(
            user: "Arnav",
          ), //TODO: unhardcode
          BlocProvider(
            create: (context) => OnboardingBloc(),
            child: BlocBuilder<OnboardingBloc, OnboardingState>(
              builder: (context, state) {
                return Card(child: Text("avgSR = ${state.averageSavingsRate}"));
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text('Go To Dashboard'),
            ),
          ),
        ],
      ),
    );
  }
}
