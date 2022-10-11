import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:space_app/presentation/widgets/solar_system_widgets/details_page/container_solar_system_details.dart';

import '../../../data/utils/planet_api.dart';
import '../../bloc/solar_system_bloc/solar_system_state.dart';

class SolarSystemInputWidget extends StatelessWidget {
  const SolarSystemInputWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final SolarSystemHasData state;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Planet?>(
      hideSuggestionsOnKeyboardHide: true,
      debounceDuration: Duration(milliseconds: 500),
      textFieldConfiguration: TextFieldConfiguration(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.purple,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            hintText: 'Pesquisar...'),
      ),
      suggestionsCallback: PlanetApi.getUserSuggestions,
      itemBuilder: (context, Planet? suggestion) {
        final planeta = suggestion!;

        return ListTile(
          title: Text(planeta.name),
        );
      },
      noItemsFoundBuilder: (context) => SizedBox(
          height: 50,
          child: Center(
            child: Text('no itens'),
          )),
      onSuggestionSelected: (Planet? suggestion) {
        final planeta = suggestion!;
        late int index;

        for (int numero = 0; numero <= state.solarSystem.length; numero++) {
          String name = state.solarSystem[numero].name;

          if (name == planeta.name) {
            index = numero;
            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text('Selecionado ${planeta.name}'),
                ),
              );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailSolarSystemContainer(
                  planet: state.solarSystem[index],
                ),
              ),
            );
          }
        }
      },
    );
  }
}
