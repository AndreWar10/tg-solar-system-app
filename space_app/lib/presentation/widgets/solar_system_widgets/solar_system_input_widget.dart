import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../data/utils/planet_api.dart';

class SolarSystemInputWidget extends StatelessWidget {
  const SolarSystemInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Planet?>(
      hideSuggestionsOnKeyboardHide: true,
      debounceDuration: Duration(milliseconds: 500),
      textFieldConfiguration: TextFieldConfiguration(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration:
        InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.purple,
            ),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(14)),
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

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => SplashPage(),
        //   ),
        // );

        ScaffoldMessenger.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text('Selected ${planeta.name}'),
            ),
          );
      },
    );
  }
}