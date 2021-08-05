class Movie {
    final int id;
    final String name;
    final String description;
    final String imagePath;
    final String category;

    Movie(
        this.id,
        this.name,
        this.description,
        this.imagePath,
        this.category,
    );

    Movie.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'],
        description = json['description'],
        imagePath = json['imagePath'],
        category = json['category'];

    Map<String, dynamic> toJson() =>
        {
            "name": name,
            "description": description,
            "imagePath": imagePath,
            "category": category,
        };
}