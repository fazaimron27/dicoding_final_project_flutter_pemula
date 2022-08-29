import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/detail_series.dart';
import 'package:dicoding_final_project_flutter_pemula/models/series_model.dart';

class Series extends StatelessWidget {
  const Series({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return const SeriesList();
        } else if (constraints.maxWidth <= 1200) {
          return const SeriesGrid(gridCount: 4);
        } else {
          return const SeriesGrid(gridCount: 6);
        }
      },
    );
  }
}

class SeriesList extends StatelessWidget {
  const SeriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final SeriesModel series = seriesList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailSeries(series: series);
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
                  image: AssetImage(series.poster),
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
                  series.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto Italic',
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
        );
      },
      itemCount: seriesList.length,
    );
  }
}

class SeriesGrid extends StatelessWidget {
  final int gridCount;

  const SeriesGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: seriesList.map((series) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailSeries(series: series);
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
                    image: AssetImage(series.poster),
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
                    series.title,
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
