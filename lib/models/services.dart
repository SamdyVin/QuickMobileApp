class Service {
  final String title, description, image;
  final num price, min, max;
  Service({
    this.title,
    this.description,
    this.price,
    this.image,
    this.min = 1,
    this.max,
  });
}
