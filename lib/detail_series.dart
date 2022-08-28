import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/models/series_model.dart';

class DetailSeries extends StatelessWidget {
  final SeriesModel series;

  const DetailSeries({Key? key, required this.series}) : super(key: key);

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
                    Image.asset(series.poster),
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
                    series.title,
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
                    series.plot,
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
                    "No of episodes: ${series.noOfEpisodes}",
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
                    "No of seasons: ${series.noOfSeasons}",
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
                    "Status: ${series.status}",
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
                    "Genre: ${series.genre}",
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
                    "Relese Date: ${series.releaseDate}",
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
                    "Country: ${series.country}",
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
                    "Director: ${series.director}",
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
                    "Writer: ${series.writer}",
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
                    "Platform: ${series.platform}",
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
                    "Cast: ${series.cast}",
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
