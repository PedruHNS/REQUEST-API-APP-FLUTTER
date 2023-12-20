import 'package:buscando_dados_internet/screens/widgets/gridview_custom.dart';
import 'package:buscando_dados_internet/services/http_client.dart';
import 'package:buscando_dados_internet/models/movie.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Movie>>? futureMovies;
  @override
  void initState() {
    futureMovies = HttpClient().getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filmes')),
      body: FutureBuilder(
          future: futureMovies,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final movies = snapshot.data as List<Movie>;
              return GridViewCustom(movies: movies);
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
