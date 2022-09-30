import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/injection.dart';
import '../../widgets/custom/custom_loading_page.dart';
import 'solar_system_bloc.dart';
import 'solar_system_event.dart';
import 'solar_system_state.dart';
import '../../pages/solar_system_pages/solar_system_page.dart';

class SolarSystemBlocImpl extends StatefulWidget {
  const SolarSystemBlocImpl({Key? key}) : super(key: key);

  @override
  State<SolarSystemBlocImpl> createState() => _SolarSystemBlocImplState();
}

class _SolarSystemBlocImplState extends State<SolarSystemBlocImpl> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: getIt.get<SolarSystemBloc>()..add(FetchSolarSystem()),
      builder: (context, state) {
        if (state is SolarSystemHasData) {
          return SolarSystemPage(
            state: state,
          );
        } else if (state is SolarSystemIsError) {
          return const Center(
            child: Text('Error'),
          );
        } else if (state is SolarSystemIsEmpty) {
          return CustomLoadingPage();
        } else {
          return const Center(
            child: Text(''),
          );
        }
      },
    );
  }
}
