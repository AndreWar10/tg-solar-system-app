import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/injection.dart';
import '../../bloc/spacex_bloc/spacex_bloc.dart';
import '../../bloc/spacex_bloc/spacex_event.dart';
import '../../bloc/spacex_bloc/spacex_state.dart';
import '../../widgets/custom/custom_loading_page.dart';

class SpacexPage extends StatelessWidget {
  const SpacexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spacex'),centerTitle: true,),
      body: BlocBuilder(
        bloc: getIt.get<SpacexBloc>()..add(FetchSpacex()),
        builder: (context, state) {
          if (state is SpacexHasData) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.spacex.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(color: Colors.blue),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Missão: ${state.spacex[index].missionName!}"),
                                  Text("Ano: ${state.spacex[index].launchYear!}"),
                                  Text("Foguete: ${state.spacex[index].rocket!.rocketName}"),
                                  Text("Link video: ${state.spacex[index].links!.videoLink}"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
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
      ),
    );
  }
}

