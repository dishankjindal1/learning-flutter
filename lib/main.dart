import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learning/custom_bloc_provider.dart';
import 'package:learning/firebase_options.dart';
import 'package:logger/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  BlocOverrides.runZoned(
    () => runApp(const CustomBlocProvider()),
    blocObserver: MainBlocObserver(),
  );
}

class MainBlocObserver extends BlocObserver {
  var logger = Logger();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.i('$bloc\n$change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.i('$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.i('$bloc');
  }
}
