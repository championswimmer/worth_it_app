import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worth_it_app/app-router.dart';
import 'package:worth_it_app/data/savingsdata/savingsdata_bloc.dart';

import 'app-theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SavingsDataBloc>(
          create: (context) => SavingsDataBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: WorthItTheme.getMainAppTheme(),
        initialRoute: AppRoutes.ONBOARDING,
        routes: createRouter(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
