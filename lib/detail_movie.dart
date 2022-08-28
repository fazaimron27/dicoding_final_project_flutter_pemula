import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/models/movies_model.dart';

class DetailMovie extends StatelessWidget {
  final MoviesModel movie;

  const DetailMovie({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(movie.poster),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: Text(
                    movie.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    movie.plot,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto Italic',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Genre: ${movie.genre}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Duration: ${movie.duration}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Relese Date: ${movie.releaseDate}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Country: ${movie.country}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Director: ${movie.director}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Writer: ${movie.writer}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Platform: ${movie.platform}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Cast: ${movie.cast}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
