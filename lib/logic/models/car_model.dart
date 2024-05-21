class CarModel {
  final String photo;
  final String title;
  final int price;
  final double score;

  CarModel(
      {required this.photo,
      required this.title,
      required this.price,
      required this.score});

  static CarModel fromJson(Map<String, dynamic> json) {
    return CarModel(
      photo: "photo",
      title: 'title',
      price: 12,
      score: 123,
    );
  }
}
