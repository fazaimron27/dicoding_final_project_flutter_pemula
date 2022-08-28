class SeriesModel {
  String title;
  String genre;
  String noOfEpisodes;
  String noOfSeasons;
  String status;
  String country;
  String director;
  String writer;
  String plot;
  String poster;
  String releaseDate;
  String platform;
  String cast;

  SeriesModel({
    required this.title,
    required this.genre,
    required this.noOfEpisodes,
    required this.noOfSeasons,
    required this.status,
    required this.country,
    required this.director,
    required this.writer,
    required this.plot,
    required this.poster,
    required this.releaseDate,
    required this.platform,
    required this.cast,
  });
}

var seriesList = [
  SeriesModel(
    title: 'Moon Knight',
    genre: 'Action, Adventure, Fantasy',
    noOfEpisodes: '6',
    noOfSeasons: '1',
    status: 'Finished',
    country: 'United States',
    director: 'Mohamed Diab, Justin Benson, Aaron Moorhead',
    writer: 'Jeremy Slater',
    plot:
        'Steven Grant discovers he\'s been granted the powers of an Egyptian moon god. But he soon finds out that these newfound powers can be both a blessing and a curse to his troubled life.',
    poster: 'images/series/moon_knight.jpg',
    releaseDate: 'March 30, 2022',
    platform: 'Disney+',
    cast: 'Oscar Isaac, Ethan Hawke, May Calamawy',
  ),
  SeriesModel(
    title: 'Big Mouth',
    genre: 'Action, Crime, Drama',
    noOfEpisodes: '16',
    noOfSeasons: '1',
    status: 'On Going',
    country: 'South Korea',
    director: 'Oh Choong-Hwan',
    writer: 'Young Chul Jang, Kyung Soon Jung',
    plot:
        'The series tells the story of an underperforming lawyer who gets caught up in a murder case. In order to survive and protect his family, he digs into a huge conspiracy among the privileged upper classes.',
    poster: 'images/series/big_mouth.jpg',
    releaseDate: 'July 29, 2022',
    platform: 'Disney+',
    cast: 'Lee Jong-Suk, Im Yoon-ah, Kim Joo-Heon',
  ),
  SeriesModel(
    title: 'House of the Dragon',
    genre: 'Action, Adventure, Drama',
    noOfEpisodes: '10',
    noOfSeasons: '2',
    status: 'On Going',
    country: 'United States',
    director: 'Ryan Condal',
    writer: 'George R. R. Martin',
    plot:
        'The story of the Targaryen civil war that took place about 200 years before events portrayed in `Game of Thrones.',
    poster: 'images/series/house_of_the_dragon.jpg',
    releaseDate: 'August 21, 2022',
    platform: 'HBO',
    cast: 'Paddy Considine, Emma D\'Arcy, Matt Smith',
  ),
  SeriesModel(
    title: 'Loki',
    genre: 'Action, Adventure, Fantasy',
    noOfEpisodes: '6',
    noOfSeasons: '1',
    status: 'Finished',
    country: 'United States',
    director: 'Kate Herron',
    writer: 'Michael Waldron',
    plot:
        'The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame.”',
    poster: 'images/series/loki.jpeg',
    releaseDate: 'June 9, 2021',
    platform: 'Disney+',
    cast: 'Tom Hiddleston, Owen Wilson, Gugu Mbatha-Raw',
  ),
  SeriesModel(
    title: 'Obi-Wan Kenobi',
    genre: 'Action, Adventure, Sci-Fi',
    noOfEpisodes: '6',
    noOfSeasons: '1',
    status: 'Finished',
    country: 'United States',
    director: 'Deborah Chow',
    writer: 'Joby Harold',
    plot:
        'Jedi Master Obi-Wan Kenobi has to save young Leia after she is kidnapped, all the while being pursued by Imperial Inquisitors and his former Padawan, now known as Darth Vader.',
    poster: 'images/series/obi-wan_kenobi.jpg',
    releaseDate: 'May 27, 2021',
    platform: 'Disney+',
    cast: 'Ewan McGregor, Moses Ingram, Vivien Lyra Blair',
  ),
];