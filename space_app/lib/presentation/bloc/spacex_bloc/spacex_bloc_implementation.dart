import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/injection.dart';
import '../../pages/spacex_page/spacex_page.dart';
import '../../widgets/custom/custom_loading_page.dart';
import 'spacex_bloc.dart';
import 'spacex_event.dart';
import 'spacex_state.dart';

class SpacexBlocImplementation extends StatelessWidget {
  const SpacexBlocImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder(
        bloc: getIt.get<SpacexBloc>()..add(FetchSpacex()),
        builder: (context, state) {
          if (state is SpacexHasData) {
            return SpacexPage(
              spacex: state.spacex,
            );
          } else if (state is SpacexIsError) {
            return const Center(
              child: Text('Error'),
            );
          } else if (state is SpacexIsEmpty) {
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