// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/models/movies_model.dart';

class DetailMovie extends StatelessWidget {
  final MoviesModel movie;

  const DetailMovie({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailMovieWeb(movie: movie);
        } else {
          return DetailMovieMobile(movie: movie);
        }
      },
    );
  }
}

class DetailMovieMobile extends StatelessWidget {
  final MoviesModel movie;

  const DetailMovieMobile({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}

class DetailMovieWeb extends StatefulWidget {
  final MoviesModel movie;

  const DetailMovieWeb({Key? key, required this.movie}) : super(key: key);

  @override
  _DetailMovieWebPageState createState() => _DetailMovieWebPageState();
}

class _DetailMovieWebPageState extends State<DetailMovieWeb> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(widget.movie.poster),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                widget.movie.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.movie.plot,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto Italic',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Genre: ${widget.movie.genre}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Duration: ${widget.movie.duration}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Relese Date: ${widget.movie.releaseDate}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Country: ${widget.movie.country}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Director: ${widget.movie.director}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Writer: ${widget.movie.writer}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Platform: ${widget.movie.platform}",
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Text(
                                  "Cast: ${widget.movie.cast}",
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
