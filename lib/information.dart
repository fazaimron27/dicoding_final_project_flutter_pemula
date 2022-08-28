import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/models/information_model.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InformationModel information = InformationModel();

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Information',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Name : ${information.name}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'SIB-ID : ${information.id}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Email : ${information.email}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Instagram : ${information.instagram}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Facebook : ${information.facebook}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Linkedin : ${information.linkedin}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Github : ${information.github}',
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto Italic',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
