import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/service.dart';

import 'config/theme_manager.dart';
import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkTheme(),
      title: "MD. Hasibul Hassan",
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}
