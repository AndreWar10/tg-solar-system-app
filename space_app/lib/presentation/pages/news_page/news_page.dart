import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/injection.dart';
import '../../bloc/news_bloc/news_bloc.dart';
import '../../bloc/news_bloc/news_event.dart';
import '../../bloc/news_bloc/news_state.dart';
import '../../widgets/custom/custom_loading_page.dart';
import '../../widgets/news_widgets/news_list_view.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notícias Astronômicas', style: GoogleFonts.montserrat(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/background/background50.png'),
          //   fit: BoxFit.cover,
          // ),
          color: Colors.black,
        ),
        child: BlocBuilder(
          bloc: getIt.get<NewsBloc>()..add(FetchNews()),
          builder: (context, state) {
            if (state is NewsHasData) {
              return RefreshIndicator(
                onRefresh: () async =>
                    getIt.get<NewsBloc>()..add(PullToRefreshEvent()),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListViewNewsWidget(news: state.news),
                    ],
                  ),
                ),
              );
            } else if (state is NewsIsError) {
              return const Center(
                child: Text('Error'),
              );
            } else if (state is NewsIsEmpty) {
              return CustomLoadingPage();
            } else {
              return const Center(
                child: Text(''),
              );
            }
          },
        ),
      ),
    );
  }
}
