class Movie {
    final int id;
    final String name;
    final String description;
    final int year;
    final List<String> genre;
    final String imagePath;
    final String moviePoster;
    final String category;
    final double rating;
    final int metascoreRating;

    Movie(
        this.id,
        this.name,
        this.description,
        this.year,
        this.genre,
        this.imagePath,
        this.moviePoster,
        this.category,
        this.rating,
        this.metascoreRating
    );

    Movie.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'],
        description = json['description'],
        year = json['year'],
        genre = json['genre'],
        imagePath = json['imagePath'],
        moviePoster = json['moviePoster'],
        category = json['category'],
        rating = json['rating'],
        metascoreRating = json['metascoreRating'];

    Map<String, dynamic> toJson() =>
        {
            "name": name,
            "description": description,
            "year": year,
            "genre": genre,
            "imagePath": imagePath,
            "moviePoster": moviePoster,
            "category": category,
            "rating": rating,
            "metascoreRating": metascoreRating
        };
}

List<Movie> movies = [
    Movie(
        0,
        "Up! Altas Aventuras",
        "Carl quer viajar para uma floresta na América do Sul, onde ele e Ellie sempre desejaram morar, mas descobre que um problema embarcou junto: Russell, um menino de 8 anos.",
        2009,
        ['Comedy', 'Romance', 'Adventure'],
        "assets/images/up.jpg",
        "assets/images/up_poster.jpg",
        "Aventura",
        8.9,
        89
    ),
    Movie(
        1,
        "Viúva Negra",
        "Ao nascer, a Viúva Negra, então conhecida como Natasha Romanova, é entregue à KGB, que a prepara para se tornar sua agente suprema. Porém, o seu próprio governo tenta matá-la quando a União Soviética se desfaz.",
        2021,
        ['Action', 'Adventure'],
        "assets/images/viuva.jpg",
        "assets/images/viuva_poster.jpg",
        "Aventura",
        7.5,
        80
    ),
    Movie(
        2,
        "Raya e o último dragão",
        "Há muito tempo, no mundo de fantasia de Kumandra, humanos e dragões viviam juntos em harmonia. Mas quando uma força maligna ameaçou a terra, os dragões se sacrificaram para salvar a humanidade. Agora, 500 anos depois, o mesmo mal voltou e cabe a uma guerreira solitária, Raya, rastrear o lendário último dragão para restaurar a terra despedaçada e seu povo dividido.",
        2021,
        ['Animation', 'Adventure', 'Action'],
        "assets/images/raya.jpg",
        "assets/images/raya_poster.jpg",
        "Aventura",
        7.2,
        75
    )
];
