class MoviesModel {
  String title;
  String genre;
  String duration;
  String country;
  String director;
  String writer;
  String plot;
  String poster;
  String releaseDate;
  String platform;
  String cast;

  MoviesModel({
    required this.title,
    required this.genre,
    required this.duration,
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

var moviesList = [
  MoviesModel(
    title: 'Thor: Love and Thunder',
    genre: 'Action, Adventure, Comedy',
    duration: '1h 58m',
    country: 'United States',
    director: 'Taika Waititi',
    writer: 'Taika Waititi, Jennifer Kaytin Robinson',
    plot:
        'Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher, who intends to make the gods extinct.',
    poster: 'images/movies/thor_love_and_thunder.jpg',
    releaseDate: 'June 23, 2022',
    platform: 'Cinema',
    cast: 'Chris Hemsworth, Natalie Portman, Christian Bale',
  ),
  MoviesModel(
    title: 'Hansan: Rising Dragon',
    genre: 'Action, Drama, History',
    duration: '2h 10m',
    country: 'South Korea',
    director: 'Han-min Kim',
    writer: 'Han-min Kim',
    plot:
        'In 1592, Admiral Yi Sun-sin and his fleet face off against the might of the invading Japanese navy and its formidable warships. As the Korean forces fall into crisis, the admiral resorts to using his secret weapon, the turtle ship, in order to change the tide of this epic battle at sea.',
    poster: 'images/movies/hansan_rising_dragon.jpg',
    releaseDate: 'July 27, 2022',
    platform: 'Cinema',
    cast: 'Park Hae-il, Yo-Han Byun, Sung-Ki Ahn',
  ),
  MoviesModel(
    title: 'Doctor Strange in the Multiverse of Madness',
    genre: 'Action, Adventure, Fantasy',
    duration: '2h 6m',
    country: 'United States',
    director: 'Sam Raimi',
    writer: 'Michael Waldron',
    plot:
        'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the multiverse. They seek help from Wanda the Scarlet Witch, Wong and others.',
    poster: 'images/movies/doctor_strange_in_the_multiverse_of_madness.jpg',
    releaseDate: 'May 2, 2022',
    platform: 'Disney+',
    cast: 'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor',
  ),
  MoviesModel(
    title: 'Kingdom: Ashin of the North',
    genre: 'Action, Drama, Horror',
    duration: '1h 32m',
    country: 'South Korea',
    director: 'Seong Hun Kim',
    writer: 'Eun-hee Kim',
    plot:
        'Tragedy, betrayal and a mysterious discovery fuel a woman\'s vengeance for the loss of her tribe and family in this special episode of "Kingdom."',
    poster: 'images/movies/kingdom_ashin_of_the_north.jpg',
    releaseDate: 'July 23, 2021',
    platform: 'Netflix',
    cast: 'Gianna Jun , Si-ah Kim, Byeong-eun Park',
  ),
  MoviesModel(
    title: 'Jurassic World Dominion',
    genre: 'Action, Adventure, Sci-Fi',
    duration: '2h 27m',
    country: 'United States',
    director: 'Colin Trevorrow',
    writer: 'Emily Carmichael',
    plot:
        'Four years after the destruction of Isla Nublar, Biosyn operatives attempt to track down Maisie Lockwood, while Dr Ellie Sattler investigates a genetically engineered swarm of giant insects.',
    poster: 'images/movies/jurassic_world_dominion.jpg',
    releaseDate: 'June 10, 2022',
    platform: 'Cinema',
    cast: 'Chris Pratt, Bryce Dallas, HowardLaura Dern',
  ),
];
