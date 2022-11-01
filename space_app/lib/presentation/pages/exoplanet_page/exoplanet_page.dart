import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/injection.dart';
import '../../bloc/exoplanets_bloc/exoplanet_bloc.dart';
import '../../bloc/exoplanets_bloc/exoplanet_event.dart';
import '../../bloc/exoplanets_bloc/exoplanet_state.dart';
import '../../widgets/custom/custom_loading_page.dart';
import '../../widgets/exoplanets_widgets/exoplanet_list_view_widget.dart';
import '../error_page/error_network_page.dart';

class ExoplanetPage extends StatelessWidget {
  const ExoplanetPage({
    Key? key,
    required this.viewHabitable,
    required this.viewNoHabitable,
  }) : super(key: key);

  final bool viewHabitable;
  final bool viewNoHabitable;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: getIt.get<ExoplanetBloc>()..add(FetchExoplanet()),
      builder: (context, state) {
        if (state is ExoplanetHasData) {
          return ListViewExoplanet(
            exoplanet: state.exoplanet,
            viewHabitable: viewHabitable,
            viewNoHabitable: viewNoHabitable,
          );
        } else if (state is ExoplanetIsError) {
          return ErrorNetworkPage();
        } else if (state is ExoplanetIsEmpty) {
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
