import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/injection.dart';
import '../../pages/error_page/error_network_page.dart';
import '../../widgets/loading/custom_loading_widget.dart';
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
    return Scaffold(
      body: BlocBuilder(
        bloc: getIt.get<SolarSystemBloc>()..add(FetchSolarSystem()),
        builder: (context, state) {
          if (state is SolarSystemHasData) {
            return SolarSystemPage(
              state: state,
            );
          } else if (state is SolarSystemIsError) {
            return ErrorNetworkPage();
          } else if (state is SolarSystemIsEmpty) {
            return CustomLoadingWidget();
          } else {
            return const Center(
              child: Text(''),
            );
          }
        },
      ),
    );
  }
}

