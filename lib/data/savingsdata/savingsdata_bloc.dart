import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SavingsDataState {
  abstract int monthlyEarning;
  abstract int daysPerWeek;
  abstract int hoursPerDay;
  abstract int savingsRate;
}

class SavingsDataInitialState extends SavingsDataState {
  int monthlyEarning = 1000;
  int daysPerWeek = 5;
  int hoursPerDay = 8;
  int savingsRate = 50;

}

enum SavingsDataEventType {
  monthlyEarning,
  daysPerWeek,
  hoursPerDay,
  savingsRate,
}

@immutable
class SavingsDataEvent {
  final int value;
  late final SavingsDataEventType type;

  SavingsDataEvent.saveMonthlyEarning(this.value) {
    type = SavingsDataEventType.monthlyEarning;
  }

  SavingsDataEvent.saveDaysPerWeek(this.value) {
    type = SavingsDataEventType.daysPerWeek;
  }

  SavingsDataEvent.saveHoursPerDay(this.value) {
    type = SavingsDataEventType.hoursPerDay;
  }

  SavingsDataEvent.saveSavingsRate(this.value) {
    type = SavingsDataEventType.savingsRate;
  }
}

class SavingsDataBloc extends Bloc<SavingsDataEvent, SavingsDataState> {
  SavingsDataBloc() : super(SavingsDataInitialState());



  @override
  Stream<SavingsDataState> mapEventToState(SavingsDataEvent event) async* {
    switch (event.type) {
      case SavingsDataEventType.monthlyEarning:
        state.monthlyEarning = event.value;
        break;
      case SavingsDataEventType.daysPerWeek:
        state.daysPerWeek = event.value;
        break;
      case SavingsDataEventType.hoursPerDay:
        state.hoursPerDay = event.value;
        break;
      case SavingsDataEventType.savingsRate:
        state.savingsRate = event.value;
        break;
    }
    yield state;
  }
}
