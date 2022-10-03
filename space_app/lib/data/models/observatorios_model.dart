class Observatorios {
  final String name;
  final String endereco;
  final String telefone;
  final double avaliacao;
  final String estado;
  String? site;
  final String maps;
  final String image;
  final String resumo;

  Observatorios(this.name, this.endereco, this.telefone, this.avaliacao,
      this.estado, this.site, this.maps, this.image, this.resumo);
}

criaObservatorio(String nome, String end, String tel, double aval, String est,
    String sit, String map, String image, String resume) {
  final String name = nome;
  final String endereco = end;
  final String telefone = tel;
  final double avaliacao = aval;
  final String estado = est;
  String? site = sit;
  final String maps = map;
  final String imagem = image;
  final String resumo = resume;

  final observatorioCriado = Observatorios(
      name, endereco, telefone, avaliacao, estado, site, maps, imagem, resumo);
  return observatorioCriado;
}

class ObservatoriosList {
  static List<List<Observatorios>> observatoriosBrasil = [
    al,
    bahia,
    ceara,
    disfed,
    espiritosanto,
    mg,
    parana,
    pernambuco,
    riograndesul,
    rj,
    sp,
  ];

  static List<Observatorios> al = [
    alagoas,
  ];

  static Observatorios alagoas = criaObservatorio(
      'Observatório Astronômico Genival Leite Lima',
      'R. Sen. Arnon de Melo, 174-326 - Pinheiro, Maceió - AL, 57055-607',
      '(82) 3315-3837',
      3.7,
      'Alagoas',
      'http://oagll.blogspot.com/',
      'https://goo.gl/maps/9tRQArzXVAw22ai58',
      'assets/observatorios/alagoas.png',
      'O Observatório Astronômico Genival Leite Lima – OAGLL é um dos grupos componentes do Centro de Ciências e Tecnologia da Educação, que está vinculado à  Superintendência de Políticas Educacionais da Secretaria da Educação do estado de Alagoas. Tem o objetivo de promover ações de divulgação e ensino de astronomia para toda a sociedade alagoana. Está em atividade desde abril de 2009. Conheça mais sobre o trabalho do observatório visitando nosso blog oagll.blogspot.com.br.');

  static List<Observatorios> bahia = [antares, uesc];

  static Observatorios antares = criaObservatorio(
    'Observatório Astronômico Antares - UEFS',
    'R. Barra, 925 - Jardim Cruzeiro, Feira de Santana - BA, 44015-430',
    '(75) 3624-1921',
    4.5,
    'Bahia',
    'http://www.antares.uefs.br/',
    'https://goo.gl/maps/knJuXAzVJcQEhbrN6',
    'assets/observatorios/observatorio-antares.jpg',
    'O Observatório Astronômico Antares é um observatório astronômico em Feira de Santana, Bahia, fundado em 1971 por Augusto César Pereira Orrico e anexado à Universidade Estadual de Feira de Santana em 1992. Entre seus setores, encontram-se a Biblioteca Setorial Observatório Astronômico Antares, inaugurada em 1997, parte integrante da biblioteca central da universidade e especializada em títulos de astronomia e física; o Museu Antares de Ciência e Tecnologia, inaugurado em 2009; e a Experimentoteca, originada em projeto de 1997, que conta com kits de experimentos científicos interativos com foco em crianças e adolescentes, atualmente filiada ao Museu, e oferece visitas gratuitas para escolas.',
  );

  static Observatorios uesc = criaObservatorio(
      'Observatório Astronômico UESC - UESC',
      'Salobrinho, Ilhéus - State of Bahia',
      '(73) 3680-5621',
      5.0,
      'Bahia',
      'https://www.oauesc.org/',
      'https://goo.gl/maps/qprteaPGKwCTkS4j8',
      'assets/observatorios/uesc.png',
      'O Observatório Astronômico é um espaço aberto ao público, onde são promovidas sessões de observação do céu com auxílio de telescópios e ponteiras lasers. Entre as atividades promovidas destacamos o Sarau das Copas, a conversa com astrônomos e os jogos didáticos. Conheça nosso programa. e agende sua visita.vEm função da pandemia de Covid-19, o Observatório Astronômico da Uesc está oferecendo também eventos virtuais especiais para incentivar as pessoas a perceberem o céu, sua beleza e sua relação com nossas vidas. Oferecemos ainda palestras e oficinas de astronomia voltadas para a educação básica. Além disso, é possível solicitar visitas presenciais de uma equipe do Observatório Astronômico à sua escola. As atividades disponíveis incluem: o Sarau das Estrelas, onde você encontrará música, poesia e diversidade cultural; a oficina Medidas do Arco da Lua, mesclando astronomia e matemática; e o Trunfo das Estrelas, um jogo que encanta, orienta e estimula a observação do céu.Todas as atividades do observatório, sejam presenciais ou virtuais, acontecem mediante agendamento prévio, cujo processo é bastante simples. Basta o(a) professor(a) preencher o formulário online e optar pelo programa mais adequado à sua turma, além de sugerir datas e horários que sejam convenientes para seus alunos e alunas. Depois é só aguardar que entraremos em contato para confirmar o agendamento.');

  static List<Observatorios> ceara = [radio, otto];

  static Observatorios radio = criaObservatorio(
      'Rádio-Observatório Espacial do Nordeste - INPE',
      'Estr. do Fio, 6000 - Mangabeira, Eusébio - CE, 61760-000',
      '(85) 3402-9000',
      4.2,
      'Ceará',
      'https://goo.gl/maps/2nQiJTbGykr9NEmQ7',
      'https://goo.gl/maps/2nQiJTbGykr9NEmQ7',
      'assets/observatorios/inpe.jpg',
      'O Rádio-Observatório Espacial do Nordeste - ROEN é um radiotelescópio com uma antena de 14,2 metros de diâmetro, a maior do Brasil, localizado na cidade de Eusébio na Região Metropolitana de Fortaleza. O rádio-observatório é um dos principais equipamentos que medem a geodésia no mundo - que observa, principalmente, dados provenientes do Sol, além de outras fontes como galáxias e planetas e desenvolve atividades relacionadas com pesquisas nas áreas de geodinâmica, geomagnetismo, astrofísica, física da Ionosfera e Processamento Inteligente de Sinais. Opera entre as frequências de 22 e 48 GHz. O ROEN é a unidade de Fortaleza, uma seção do Centro Regional de Natal do INPE.');

  static Observatorios otto = criaObservatorio(
      'Observatório Astronômico Otto de Alencar - Universidade Estadual do Ceará - UECE',
      'Av. Dr. Silas Munguba, 1700 - Parangaba, Fortaleza - CE, 60741-000',
      '(85) 3101-9773',
      4.4,
      'Ceará',
      'https://goo.gl/maps/SZjwV1wVEaWPRisd7',
      'https://goo.gl/maps/SZjwV1wVEaWPRisd7',
      'assets/observatorios/otto.png',
      'O Observatório Astronômico Otto de Alencar, da Universidade Estadual do Ceará (Uece), iniciou suas atividades na noite de terça-feira (25). A aquisição de equipamentos para o observatório, localizado no campus do Itaperi, próximo à clínica veterinária, foi feita por meio do Edital do Programa de Popularização da Astronomia Funcap/CNPq nº 04/2010. A atividade inaugural consistiu na observação da ocultação do planeta Júpiter pela Lua. De acordo com os participantes, o fenômeno teve início por volta das 19h54 e terminou por volta das 21h40. ');

  static List<Observatorios> disfed = [
    luiz,
  ];
  static Observatorios luiz = criaObservatorio(
      'Observatório Astronômico Luiz Cruls',
      'Lago Sul, Brasília - DF, 70297-400',
      '',
      4.4,
      'Ceará',
      'http://www.fis.unb.br/observatorio/index.php',
      'https://goo.gl/maps/dQw7VSjoWFw5qxNaA',
      'assets/observatorios/luiz.png',
      'O Observatório Astronômico Luiz Cruls está localizado dentro da Fazenda Água Limpa, na região administrativa do Lago Sul, no Distrito Federal, e é um laboratório vinculado ao Instituto de Física da Universidade de Brasília. A instrumentação disponível consiste em três telescópios, sendo o principal deles um telescópio Meade LX200 de 10 polegadas.');

  static List<Observatorios> espiritosanto = [
    ufes,
  ];
  static Observatorios ufes = criaObservatorio(
      'Observatório Astronômico da UFES - UFES',
      'Avenida Fernando Ferrari, 514, Prédio IC 1, Campus de Goiabeiras, Vitória – ES',
      '27 99859-3462 ',
      4.6,
      'Espírito Santo',
      'https://www.ufes.br/node/81#:~:text=O%20Observat%C3%B3rio%20Astron%C3%B4mico%20da%20Ufes,educa%C3%A7%C3%A3o%20em%20astronomia%20na%20comunidade.',
      'https://goo.gl/maps/dQw7VSjoWFw5qxNaA',
      'assets/observatorios/ufes_vit.jpg',
      'O Observatório Astronômico da UFES (OA-UFES) é um observatório astronômico localizado na cidade de Vitória, vinculado ao Departamento de Física da Universidade Federal do Espírito Santo. Foi inaugurado em março de 1986, época da última passagem do cometa Halley.');

  static List<Observatorios> mg = [ufop, ufmg];
  static Observatorios ufop = criaObservatorio(
      'Observatório Astronômico da Escola de Minas',
      'R. Henri Gorceix, 241-321 - Ouro Preto, MG, 35400-000',
      '(31) 3559-1529',
      4.8,
      'Minas Gerais',
      'http://www.em.ufop.br/',
      'https://goo.gl/maps/b7mQQFe23itUTVQq9',
      'assets/observatorios/ufop.jpeg',
      'Construído no fim do século XIX como apoio para ministrar a disciplina de Astronomia e Geodésia, o Observatório de Astronomia da Escola de Minas possui, em seu acervo, o telescópio refrator Mailhat, criado na França, no final do séc XIX, e o refrator alemão Gustav Heyde que possui mais de cem anos e é um dos mais antigos do Brasil em uso. Com a extinção da disciplina na década de 1970, o observatório passou a ser aberto à visitação de escolas, turistas e moradores de Ouro Preto. Em 1992, o local passou a desenvolver projetos de estímulo à astronomia, por meio da criação da Sociedade de Estudos Astronômicos de Ouro Preto (Seaop). Hoje o observatório também desenvolve o projeto "Astronomia vai às escolas", que funciona às 19h das quartas-feiras e tem como objetivo a difusão da astronomia junto às instituições de ensino fundamental e médio, e o "Astronomia na Comunidade", voltado para o público em geral.');

  static Observatorios ufmg = criaObservatorio(
      'Observatório Astronômico do Museu UFMG',
      'R. Gustavo da Silveira, 1035 - Santa Ines, Belo Horizonte - MG, 31080-010',
      '(31) 3409-7651',
      4.6,
      'Minas Gerais',
      'https://www.ufmg.br/mhnjb/',
      'https://g.page/mhnjb-ufmg?share',
      'assets/observatorios/ufmg.png',
      'O Museu de História Natural e Jardim Botânico da UFMG (MHNJB/UFMG) está instalado em uma área com aproximadamente 600.000 m², possui vegetação diversificada e típica da Mata Atlântica, que reúne, além das nativas, espécies exóticas. O Museu dispõe de um acervo formado por aproximadamente 24.000 itens entre peças e espécimes científicos preservados e vivos (coleção científica de plantas e reserva vegetal) e contextualizados nas áreas da Arqueologia, Paleontologia, Geologia, Botânica, Zoologia, Cartografia Histórica, Etnografia, Arte Popular e Documentação Bibliográfica e Arquivística. Integrando as áreas citadas também podem ser mencionados livros e periódicos, nacionais e estrangeiros, que se encontram na biblioteca do MHNJB/UFMG, assim como um expressivo conjunto de fotos e de documentos do museu, incluindo aqueles relativos ao Presépio do Pipiripau. Parte desse acervo encontra-se exposto e pode ser visitado. O Museu dispõe ainda de um auditório, de um viveiro de mudas, uma lagoa, um anfiteatro ecológico e um jardim sensorial.');

  static List<Observatorios> parana = [
    campomagro,
  ];

  static Observatorios campomagro = criaObservatorio(
      'Observatório Astronômico Prof. Dr. Leonel Moro',
      '83535-000, Campo Magro - PR',
      'Telefone não informado',
      4.7,
      'Paraná',
      'https://www.cacep.com.br/oacep/observatorio-visitacao-publica/',
      'https://goo.gl/maps/ACg9qLEWecdZfmK99',
      'assets/observatorios/campomagro.jpg',
      'As tradicionais visitas abertas do Observatório Astronômico do Colégio Estadual do Paraná à comunidade acontecem conforme as datas informadas na página Visitação Pública do CACEP, desde que haja um quórum pré-estabelecido e céu compatível para observações. Os membros do clube e visitantes irão se encontrar no Planetário do Colégio Estadual às 19h quando terá início a uma reunião de apresentação do CACEP. Após a reunião, caso o céu esteja propício para observações, os visitantes e membros que tiverem interesse irão se deslocar para o Observatório Astronômico em Campo Magro. Se o tempo estiver realmente fechado, sem nenhuma visibilidade, iremos permanecer no planetário e será apresentado algum tópico relacionado a astronomia. Se for decidido ir para o Observatório, logo após o encerramento da reunião de apresentação do CACEP, às 20h, todos os interessados poderão se dirigir para o Observatório em Campo Magro, sendo que o tempo de percurso leva em média 20 a 30 minutos. As observações irão se estender até as 23h30 quando iremos retornar à Curitiba. As visitas públicas são gratuitas e o deslocamento ao Observatório será de responsabilidade de cada participante. A observação do céu será com telescópios e as identificações das constelações acontecem sob o monitoramento dos professores do Observatório e membros do CACEP.');

  static List<Observatorios> pernambuco = [
    recife,
  ];
  static Observatorios recife = criaObservatorio(
      'Observatório Astronômico da Torre Malakoff',
      'Praça do Arsenal, s/n - Recife, PE, 50030-350',
      '(81) 3184-3180',
      4.6,
      'Recife',
      'http://www.cultura.pe.gov.br/pagina/espacosculturais/torre-malakoff/',
      'https://g.page/TorreMalakoff?share',
      'assets/observatorios/recife.jpg',
      'O Observatório Astronômico volta a integrar a programação da Torre Malakoff - equipamento cultural gerenciado pela Secult-PE/Fundarpe, localizado no Bairro do Recife. Os curiosos em observar os corpos celestes visíveis à Terra poderão "checar" o céu, novamente, a partir deste domingo (8) no terraço que fica em topo do espaço. Os visitantes serão acompanhados por integrantes do Grupo de Pesquisa Desvendando o Céu Austral, vinculado ao Departamento de Física da Universidade Federal Rural de Pernambuco (UFRPE).');

  static List<Observatorios> riograndesul = [
    pucrs,
  ];

  static Observatorios pucrs = criaObservatorio(
      'Observatório Astronômico da PUCRS',
      'Av. Ipiranga, 6681 - Prédio 8 - 6° Andar CEP: 90619-900 - Partenon, Porto Alegre - RS',
      '(51) 3353-4436',
      5.0,
      'Rio Grande do Sul',
      'https://www.pucrs.br/politecnica/astronomia/',
      'https://goo.gl/maps/RKgg7nx2cw5LXD6M6',
      'assets/observatorios/pucrs_1.png',
      'Até o dia 24 de janeiro, o Observatório Astronômico da PUCRS promove a atividade especial e gratuita de reconhecimento das estrelas do período do verão. Além de proporcionar a observação de detalhes do céu através dos telescópios, o Observatório irá ensinar os visitantes a identificar as constelações características do período. A atividade, aberta ao público em geral, ocorre de segunda-feira a sexta-feira, das 20h às 22h, na sala 601 do prédio 8 do Campus (Avenida Ipiranga, 6681 – Porto Alegre) e não necessita de inscrição prévia. A realização do evento fica sujeita a cancelamento devido à falta de condições meteorológicas adequadas e é aconselhado ligar previamente antes de participar. De acordo com Marcelo Bruckmann, técnico do Observatório, a constelação de destaque a ser observada no verão é Órion, cujo cinturão é formado pelas Três Marias. Ele explica que o objetivo da atividade é promover um momento reflexivo, de desaceleração frente ao cotidiano corrido dos visitantes. “Os participantes poderão identificar as estrelas e terão a oportunidade de interagir com amigos e familiares ao compartilharem essas informações que costumam ser de interesse comum”, completa Bruckmann.');

  static List<Observatorios> rj = [
    nacional,
  ];

  static Observatorios nacional = criaObservatorio(
      'Observatório Astronômico Nacional',
      'R. Gen. José Cristino, 77 - Vasco da Gama, Rio de Janeiro - RJ, 20921-400',
      '(21) 3504-9100',
      4.7,
      'Rio de Janeiro',
      'https://www.gov.br/observatorio/pt-br',
      'https://g.page/observatorionacional?share',
      'assets/observatorios/nacional.png',
      'O Observatório Nacional (ON) é uma instituição científica localizada na cidade do Rio de Janeiro, no estado do Rio de Janeiro, no Brasil.[1] O ON foi criado em 1827, sendo, assim, uma das instituições científicas mais antigas do país.[2][3] A sua finalidade inicial foi a de orientar os estudos geográficos do território brasileiro e o ensino da navegação. Em nossos dias, desenvolve pesquisas, ensino e prestação de serviços tecnológicos, sendo responsável pela geração, distribuição e conservação da Hora Legal Brasileira e por diversas pesquisas e estudos em astronomia, astrofísica e geofísica. Oferece cursos de pós-graduação com mestrado e doutorado nessas áreas. Criou, entre outros institutos, a meteorologia (1909), o Laboratório Nacional de Astrofísica (1980), anteriormente Observatório Astrofísico Brasileiro e o Museu de Astronomia e Ciências Afins (1985).');

  static List<Observatorios> sp = [uspsc, franca, uspsp];

  static Observatorios uspsc = criaObservatorio(
      'Observatório Astronômico do Centro de Divulgação Científica - USP',
      'Avenida Dr. Carlos Botelho, 1465 - Centro, São Carlos - SP, 13560-251',
      '(16) 3373-9997',
      4.7,
      'São Paulo',
      'saocarlos.usp.br',
      'https://goo.gl/maps/xpRW4LBed18r3ntBA',
      'assets/observatorios/uspsc.jpg',
      'O Setor de Astronomia do CDCC, popularmente conhecido como Observatório Astronômico do CDCC da USP (São Carlos) e oficialmente Observatório Dietrich Schiel foi implantado em 4 de abril de 1986 e inaugurado no dia 10 de abril do mesmo ano, coincidindo com a passagem do Cometa Halley. Ligado ao Centro de Divulgação Científica e Cultural, está instalado no "Campus 1" da USP da cidade de São Carlos, no interior de São Paulo. Corresponde a uma ampliação das atividades em Biologia, Computação, Física, Matemática e Química do CDCC e conta com um observatório astronômico profissional em pequena escala destinado à divulgação da astronomia para a comunidade em geral. As visitas livres ao Observatório ocorrem de sexta-feira a domingo, das 20h às 22h. Há também horários específicos para visitas de grupos ou de instituições. O Observatório também presta orientações técnicas e científicas sobre Astronomia aos interessados.');

  static Observatorios franca = criaObservatorio(
      'Observatório Municipal de Astronomia de Franca',
      'Vila Champagnat, Franca - State of São Paulo',
      '(16) 3711-9247',
      4.4,
      'São Paulo',
      'https://www.franca.sp.gov.br/uncategorised/espaco-de-difusao-cientifica',
      'https://goo.gl/maps/mKyGuTuGt47Jg2aNA',
      'assets/observatorios/franca.jpg',
      'Olhar para o céu. Um ato simples que desperta a curiosidade de milhares de pessoas. Como tudo começou? Como tudo acabará? Perguntas frequentemente feitas, mas que quase nunca possuem respostas contundentes. Tais mistérios despertam o interesse em amantes da astronomia e curiosos, que buscam o Observatório Municipal de Astronomia “Dr. Thomaz Novelino” para conhecer e aprender mais sobre o assunto.');

  static Observatorios uspsp = criaObservatorio(
      'Observatório Astronômico do Parque CienTec da USP',
      'Av. Miguel Estefno, 4200 - Vila Água Funda, São Paulo - SP, 04301-904',
      '(11) 5077-6312',
      4.7,
      'São Paulo',
      'http://parquecientec.usp.br/',
      'https://goo.gl/maps/w2gnRCknWpUP2iVx9',
      'assets/observatorios/uspsp.jpg',
      'O Observatório de São Paulo é o principal observatório da cidade de São Paulo, no Brasil. Foi construído por José Nunes Belfort de Mattos e inaugurado em 30 de abril de 1912, com o nome de Observatório Astronômico e Meteorológico, no número 69 da avenida Paulista. Na época, o observatório, além de sede da Diretoria do Serviço Meteorológico e Astronômico do Estado de São Paulo, executava serviços como medição da hora oficial do estado de São Paulo, estudos de Física Solar, Magnetismo Terrestre e de Sismologia, sendo que para estes últimos estavam destinados dois pêndulos Wichert de fabricação alemã. Em 1928, com o crescimento da cidade, a avenida Paulista já não era mais a localização ideal para o observatório, pois o imenso movimento prejudicava tanto as observações atmosféricas quanto as medições sismológicas. Logo, foi efetuada a sua transferência para o Parque do Estado, localização considerada mais apropriada dentre as cogitadas. Assim, em 24 de abril de 1941 ocorreu a reinauguração do Observatório, em novo endereço. O local passou a ser também a sede do Instituto Astronômico e Geofísico (IAG) da Universidade de São Paulo. Após a transferência do instituto para a Cidade Universitária, o local passou a abrigar o Parque de Ciência e Tecnologia da USP (CienTec). Desde então, o local possui apelo turístico, com visitas e palestras para escolas e visitantes.');
}
