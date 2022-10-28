class MovieModel {
  String? image, title, genre;
  int? rating;

  MovieModel({
    this.image,
    this.title,
    this.genre,
    this.rating,
  });
}

List<MovieModel> movie_list = [
  MovieModel(
    image: 'assets/images/image7.png',
    title: 'Mulan Session',
    genre: 'History, War',
    rating: 3,
  ),
  MovieModel(
    image: 'assets/images/image6.png',
    title: 'Beauty & Beast',
    genre: 'Sci-Fiction',
    rating: 5,
  ),
  MovieModel(
    image: 'assets/images/image3.png',
    title: 'John Wick 4',
    genre: 'Action, Crime',
    rating: 5,
  ),
  MovieModel(
    image: 'assets/images/cover.png',
    title: 'Bohemian',
    genre: 'Documentary',
    rating: 3,
  ),
  MovieModel(
    image: 'assets/images/dark2.png',
    title: 'The Dark II',
    genre: 'Horror',
    rating: 4,
  ),
  MovieModel(
    image: 'assets/images/image9.png',
    title: 'The Dark Knight',
    genre: 'Heroes',
    rating: 5,
  ),
  MovieModel(
    image: 'assets/images/image10.png',
    title: 'The Dark Tower',
    genre: 'Action',
    rating: 4,
  ),
];

List<MovieModel> display_list = List.from(movie_list);
