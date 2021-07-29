import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(InitialOnboardingState());

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    switch (event._stage) {
      case OnboardingStage.init:
        yield InitialOnboardingState();
        return;
      case OnboardingStage.saveFormPage1:
        this.state.monthlyEarning = event.monthlyEarning;
        this.state.daysPerWeek = event.daysPerWeek;
        break;
      case OnboardingStage.saveFormPage2:
        this.state.hoursPerDay = event.hoursPerDay;
        this.state.averageSavingsRate = event.averageSavingsRate;
        break;
    }
    yield this.state;
  }
}

enum OnboardingStage { init, saveFormPage1, saveFormPage2 }

@immutable
abstract class OnboardingEvent extends OnboardingState {
  OnboardingStage _stage = OnboardingStage.init;

  OnboardingEvent({
    required OnboardingStage stage,
    int? monthlyEarning,
    int? daysPerWeek,
    int? hoursPerDay,
    int? averageSavingsRate,
  }) {
    this._stage = stage;
    if (averageSavingsRate != null) this.averageSavingsRate = averageSavingsRate;
    if (hoursPerDay != null) this.hoursPerDay = hoursPerDay;
    if (daysPerWeek != null) this.daysPerWeek = daysPerWeek;
    if (monthlyEarning != null) this.monthlyEarning = monthlyEarning;
  }
}

@immutable
abstract class OnboardingState {
  abstract int monthlyEarning;
  abstract int daysPerWeek;
  abstract int hoursPerDay;
  abstract int averageSavingsRate;
}

class InitialOnboardingState extends OnboardingState {
  int monthlyEarning = 0;
  int daysPerWeek = 5;
  int hoursPerDay = 8;
  int averageSavingsRate = 50;
}

