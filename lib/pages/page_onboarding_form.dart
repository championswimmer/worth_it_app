import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_it_app/data/savingsdata/savingsdata_bloc.dart';
import 'package:worth_it_app/utils/debouncer.dart';
import 'package:worth_it_app/widgets/atomic/onboarding_form_field.dart';
import 'package:worth_it_app/widgets/atomic/onboarding_greeting_card.dart';

import '../app-router.dart';

class OnboardingFormPage extends StatefulWidget {
  @override
  _OnboardingFormPageState createState() => _OnboardingFormPageState();
}

class _OnboardingFormPageState extends State<OnboardingFormPage> {
  int _formPage = 0;
  Debouncer _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OnboardingGreetingCard(
            user: "Arnav",
          ), //TODO: unhardcode
          BlocBuilder<SavingsDataBloc, SavingsDataState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OnboardingFormField(
                      label: "How much do you earn monthly ?",
                      prefixText: "₹ ",
                      onChanged: (value) {
                        _debouncer.run(() {
                          context.read<SavingsDataBloc>().add(
                              SavingsDataEvent.saveMonthlyEarning(
                                  int.parse(value)));
                        });
                      },
                    ),
                    OnboardingFormField(
                      label: "How may days per week you work ?",
                      onChanged: (value) {
                        _debouncer.run(() {
                          context.read<SavingsDataBloc>().add(
                              SavingsDataEvent.saveDaysPerWeek(
                                  int.parse(value)));
                        });
                      },
                    ),
                  ],
                ),
              );
            },
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
