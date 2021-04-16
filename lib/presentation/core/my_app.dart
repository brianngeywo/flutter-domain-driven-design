import 'package:auto_route/auto_route.dart';
import 'package:ddd_course/application/auth/auth_bloc.dart';
import 'package:ddd_course/injection.dart';
import 'package:ddd_course/presentation/routes/router.gr.dart'
    as app_router;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        )
      ],
      child: MaterialApp(
        title: 'DDD course',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: ExtendedNavigator.builder(router: app_router.Router()),
      ),
    );
  }
}
