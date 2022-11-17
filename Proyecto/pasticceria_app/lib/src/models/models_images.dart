class Receta {
  final int id;
  final String name;
  final String image;

  const Receta({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Receta.fromJson(Map<String, dynamic> json) => Receta(
        id: json['id'],
        name: json['name'],
        image: json['img'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': name,
        'image': image,
      };
  Receta copy() => Receta(
        id: id,
        name: name,
        image: image,
      );
}
