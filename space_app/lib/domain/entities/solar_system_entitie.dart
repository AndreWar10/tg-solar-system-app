import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../data/models/system_solar_model.dart';

class SystemSolarEntitie extends Equatable {
  const SystemSolarEntitie({
    required this.id,
    required this.name,
    required this.type,
    required this.resume,
    required this.introduction,
    required this.images,
    required this.searchTags,
    required this.features,
    required this.geography,
  });

  final String id;
  final String name;
  final String type;
  final String resume;
  final String introduction;
  final Images images;
  final List<String> searchTags;
  final Features features;
  final String geography;

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        resume,
        introduction,
        images,
        searchTags,
        features,
        geography
      ];

      Color? get baseColor => _color(id: id[0]);

  static Color? _color({required String id}) {
    switch (id) {
      case '0':
        return Color(0xFFb17c0c);
      case '1':
        return Color(0xFF6c6c6c);
      case '2':
        return Color(0xFF733508);
      case '3':
        return Color(0xFF055643);
      case '4':
        return Color(0xFF431b10);
      case '5':
        return Color(0xFF402009);
      case '6':
        return Color(0xFF6d4c23);
      case '7':
        return Color.fromARGB(255, 1, 59, 82);
      case '8':
        return Color(0xFF1a1d4d);
      case '9':
        return Color(0xFF694e31);
      default:
        return Color(0xFFFFFFFF);
    }
  }

  Color? get baseColor2 => _color2(id: id[0]);

  static Color? _color2({required String id}) {
    switch (id) {
      case '0':
        return Color(0xFFf9e831);

      case '1':
        return Color(0xFFe8b99d);
      case '2':
        return Color(0xFFdd8a3c);
      case '3':
        return Color(0xFF2f308e);
      case '4':
        return Color(0xFFd16b3a);
      case '5':
        return Color(0xFFae8b56);
      case '6':
        return Color(0xFFf0ca81);
      case '7':
        return Color.fromARGB(255, 56, 175, 230);
      case '8':
        return Color(0xFF7187db);
      case '9':
        return Color(0xFFe6bd87);
      default:
        return Color(0xFFFFFFFF);
    }
  }

   String? get cardtext => _string(id: id[0]);

  static String? _string({required String id}) {
    switch (id) {
      case '0':
        return 'Nosso Sol é uma estrela de 4,5 bilhões de anos – uma bola quente e brilhante de hidrogênio e hélio no centro do';
      case '1':
        return 'O menor planeta do nosso sistema solar e mais próximo do Sol, Mercúrio é apenas um pouco maior que a';
      case '2':
        return 'Vênus é o segundo planeta a partir do Sol e é o vizinho planetário mais próximo do planeta Terra. Vênus';
      case '3':
        return 'Nosso planeta natal é o terceiro planeta a partir do Sol, e o único lugar que conhecemos até agora que é habitado';
      case '4':
        return 'Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao';
      case '5':
        return 'Júpiter tem uma longa história de cientistas surpreendentes desde 1610, quando Galileu Galilei encontrou';
      case '6':
        return 'Saturno é o sexto planeta a partir do Sol e o segundo maior planeta do nosso sistema solar. Adornado';
      case '7':
        return 'Urano é o sétimo planeta a partir do Sol e tem o terceiro maior diâmetro do nosso sistema solar. Foi o';
      case '8':
        return 'Escuro, frio e açoitado por ventos supersônicos, o gigante de gelo Netuno é o oitavo e mais distante';
      case '9':
        return 'Em 2006, Plutão foi reclassificado como planeta anão. Basicamente, o principal parâmetro ';
      default:
        return '';
    }
  }


  String? get video => _video(id: id[0]);

  static String? _video({required String id}) {
    switch (id) {
      case '0':
        return 'https://www.youtube.com/watch?v=nAdj9an6N24';
      case '1':
        return 'https://www.youtube.com/watch?v=Nt1roYm0jPQ';
      case '2':
        return 'https://www.youtube.com/watch?v=-FJ34qWCSYY';
      case '3':
        return 'https://www.youtube.com/watch?v=lEePi92HCuI';
      case '4':
        return 'https://www.youtube.com/watch?v=ImpreapHhHY';
      case '5':
        return 'https://www.youtube.com/watch?v=NP0ymdPeW7w';
      case '6':
        return 'https://www.youtube.com/watch?v=i0YzfunCz3A';
      case '7':
        return 'https://www.youtube.com/watch?v=e8bdtCgCoNY';
      case '8':
        return 'https://www.youtube.com/watch?v=xO-fBNKjOzs';
      case '9':
        return 'https://www.youtube.com/watch?v=-rG1e3FQUpI';
      default:
        return '';
    }
  }

   String? get description => _stringDes(id: id[0]);

  static String? _stringDes({required String id}) {
    switch (id) {
      case '0':
        return 'Estrela Central do Sistema Solar';
      case '1':
        return 'Menor e mais interno do Sistema Solar';
      case '2':
        return 'Segundo planeta do Sistema Solar';
      case '3':
        return 'Nosso grande Planeta Azul';
      case '4':
        return 'O grande Planeta Vermelho';
      case '5':
        return 'O maior planeta do Sistema Solar';
      case '6':
        return 'O planeta com mais Luas';
      case '7':
        return 'O planeta mais frio ';
      case '8':
        return 'O último planeta do sistema solar';
      case '9':
        return 'O planeta Anão ';
      default:
        return '';
    }
  }
}
