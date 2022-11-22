import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/injection.dart';
import '../../pages/error_page/error_network_page.dart';
import '../../pages/spacex_page/spacex_page.dart';
import '../../widgets/loading/custom_loading_widget.dart';
import 'spacex_bloc.dart';
import 'spacex_event.dart';
import 'spacex_state.dart';

class SpacexBlocImplementation extends StatelessWidget {
  const SpacexBlocImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: getIt.get<SpacexBloc>()..add(FetchSpacex()),
      builder: (context, state) {
        if (state is SpacexHasData) {
          return SpacexPage(
            spacex: state.spacex,
          );
        } else if (state is SpacexIsError) {
          return ErrorNetworkPage();
        } else if (state is SpacexIsEmpty) {
          return CustomLoadingWidget();
        } else {
          return const Center(
            child: Text(''),
          );
        }
      },
    );
  }
}
