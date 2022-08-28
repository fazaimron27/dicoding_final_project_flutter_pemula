import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/detail_movie.dart';
import 'package:dicoding_final_project_flutter_pemula/models/movies_model.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

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
                borderRadius: BorderRadius.circular(4),
              ),
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
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
