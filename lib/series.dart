import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/detail_series.dart';
import 'package:dicoding_final_project_flutter_pemula/models/series_model.dart';

class Series extends StatelessWidget {
  const Series({Key? key}) : super(key: key);

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
