class Receta {
  final int id;
  final String image;

  const Receta({
    required this.id,
    required this.image,
  });

  factory Receta.fromJson(Map<String, dynamic> json) => Receta(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
