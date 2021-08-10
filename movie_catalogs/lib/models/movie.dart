class Movie {
    final int id;
    final String name;
    final String description;
    final String imagePath;
    final String category;
    final double rating;

    Movie(
        this.id,
        this.name,
        this.description,
        this.imagePath,
        this.category,
        this.rating
    );

    Movie.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'],
        description = json['description'],
        imagePath = json['imagePath'],
        category = json['category'],
        rating = json['rating'];

    Map<String, dynamic> toJson() =>
        {
            "name": name,
            "description": description,
            "imagePath": imagePath,
            "category": category,
            "rating": rating
        };
}

List<Movie> movies = [
    Movie(
        0,
        "Up! Altas Aventuras",
        "Carl quer viajar para uma floresta na América do Sul, onde ele e Ellie sempre desejaram morar, mas descobre que um problema embarcou junto: Russell, um menino de 8 anos.",
        "assets/images/up.jpg",
        "Aventura",
        8.9
    ),
    Movie(
        1,
        "Viúva Negra",
        "Ao nascer, a Viúva Negra, então conhecida como Natasha Romanova, é entregue à KGB, que a prepara para se tornar sua agente suprema. Porém, o seu próprio governo tenta matá-la quando a União Soviética se desfaz.",
        "assets/images/viuva.jpg",
        "Aventura",
        7.5
    ),
    Movie(
        2,
        "Raya e o último dragão",
        "Há muito tempo, no mundo de fantasia de Kumandra, humanos e dragões viviam juntos em harmonia. Mas quando uma força maligna ameaçou a terra, os dragões se sacrificaram para salvar a humanidade. Agora, 500 anos depois, o mesmo mal voltou e cabe a uma guerreira solitária, Raya, rastrear o lendário último dragão para restaurar a terra despedaçada e seu povo dividido.",
        "assets/images/raya.jpg",
        "Aventura",
        7.2
    )
];
