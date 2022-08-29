import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/detail_movie.dart';
import 'package:dicoding_final_project_flutter_pemula/models/movies_model.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return const MoviesList();
        } else if (constraints.maxWidth <= 1200) {
          return const MoviesGrid(gridCount: 4);
        } else {
          return const MoviesGrid(gridCount: 6);
        }
      },
    );
  }
}

class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final MoviesModel movies = moviesList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMovie(movie: movies);
            }));
          },
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.all(12),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movies.poster),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Text(
                  movies.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto Italic',
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: moviesList.length,
    );
  }
}

class MoviesGrid extends StatelessWidget {
  final int gridCount;

  const MoviesGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: moviesList.map((movies) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMovie(movie: movies);
              }));
            },
            child: Card(
              elevation: 6,
              margin: const EdgeInsets.all(12),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(movies.poster),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Text(
                    movies.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto Italic',
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
